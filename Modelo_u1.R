# ============================================================================
# Script de modelado predictivo de ventas de vehículos
# Autor: UMG 5to Semestre, Métodos Numéricos
# Descripción: Este script conecta a una base de datos PostgreSQL, extrae datos 
# de ventas de vehículos y variables macroeconómicas, entrena un modelo de 
# Random Forest y realiza predicciones
# ============================================================================

# -------------------------------------
# 1. Instalación y carga de librerías
# -------------------------------------
install.packages(c("caret", "randomForest", "forecast", "stringi", "ggplot2", "DescTools", "scales"))

library(RPostgres)      # Conexión con base de datos PostgreSQL
library(dplyr)          # Manipulación de datos
library(ggplot2)        # Visualización
library(caret)          # Utilidades de modelado (train/test split, métricas)
library(randomForest)   # Modelado con Random Forest clásico
library(forecast)       # Series de tiempo y predicción
library(DescTools)      # Herramientas estadísticas adicionales
library(scales)         # Escalado para visualización
library(glue)           # Texto interpolado de forma segura

# -------------------------------------
# 2. Conexión a la base de datos
# -------------------------------------
source("src/base_datos.R")       # Cargar funciones de conexión
conn <- connect_db()             # Establecer conexión

if (!test_connection(conn)) {
  stop("[ERROR] NO SE PUDO CONECTAR A LA BASE DE DATOS")
}

# -------------------------------------
# 3. Carga de datos desde funciones
# -------------------------------------
source("src/base_datos_repositorio.R")

df_ventas <- get_ventas_mensuales(conn)
df_vehiculos <- get_vehiculos(conn)
df_marcas <- get_marcas(conn)
df_modelos <- get_modelos(conn)
df_paises <- get_paises(conn)
df_indicadores <- get_indicadores(conn)
df_ipc <- get_ipc(conn)

# -------------------------------------
# 4. Integración de datasets
# -------------------------------------
df_ventas_completo <- df_ventas %>%
  left_join(df_vehiculos, by = c("vehiculo_id" = "id"), suffix = c("", "_vehiculo")) %>%
  left_join(df_modelos, by = c("modelo" = "id"), suffix = c("", "_modelo")) %>%
  left_join(df_marcas, by = c("marca" = "id"), suffix = c("", "_marca")) %>%
  left_join(df_paises, by = c("pais_id" = "id"), suffix = c("", "_pais")) %>%
  left_join(df_indicadores, by = c("pais_id", "anio"), suffix = c("", "_indicador")) %>%
  left_join(df_ipc, by = c("pais_id" = "pais", "anio", "mes"), suffix = c("", "_ipc"))

# -------------------------------------
# 5. Renombrar y seleccionar variables
# -------------------------------------
df_ventas_completo <- df_ventas_completo %>%
  rename(
    modelo_nombre = nombre,
    marca_nombre = nombre_marca,
    pais_nombre = nombre_pais,
    pib = pib_valor,
    tasa_interes = tasa_interes,
    confianza_consumidor = confianza_consumidor,
    valor_ipc = valor_ipc
  ) %>%
  select(
    cantidad_vendida, anio, mes,
    marca_nombre, modelo_nombre, pais_nombre,
    pib, tasa_interes, confianza_consumidor, valor_ipc
  ) %>%
  na.omit()  # Elimina filas con NA

# -------------------------------------
# 6. Preparación de datos para el modelo
# -------------------------------------
df_modelo_final <- df_ventas_completo %>%
  mutate(
    mes_factor = as.factor(mes),
    marca_factor = as.factor(marca_nombre),
    pais_factor = as.factor(pais_nombre)
  )

# Partición del dataset en entrenamiento y prueba (80/20)
set.seed(123)
index <- createDataPartition(df_modelo_final$cantidad_vendida, p = 0.8, list = FALSE)
train_data <- df_modelo_final[index, ]
test_data <- df_modelo_final[-index, ]

# Validar número de niveles de variables categóricas
sapply(train_data[, c("marca_factor", "pais_factor", "mes_factor")], nlevels)

# -------------------------------------
# 7. Entrenamiento del modelo Random Forest
# -------------------------------------
library(ranger)

rf_model <- ranger(
  formula = cantidad_vendida ~ anio + mes_factor + marca_factor + pais_factor + pib + tasa_interes + confianza_consumidor + valor_ipc,
  data = train_data,
  num.trees = 500,
  importance = "impurity",
  num.threads = parallel::detectCores() - 1
)

# -------------------------------------
# 8. Evaluación del modelo
# -------------------------------------
predictions <- predict(rf_model, data = test_data)$predictions

RMSE <- sqrt(mean((predictions - test_data$cantidad_vendida)^2))
MAE <- mean(abs(predictions - test_data$cantidad_vendida))

message(glue("RMSE: {round(RMSE, 2)}"))
message(glue("MAE: {round(MAE, 2)}"))

# -------------------------------------
# 9. Importancia de variables
# -------------------------------------
importance_vals <- rf_model$variable.importance

importance_df <- data.frame(
  Variable = names(importance_vals),
  Importance = importance_vals
) %>% arrange(desc(Importance))

# Visualización de importancia
ggplot(importance_df, aes(x = reorder(Variable, Importance), y = Importance)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Importancia de Variables", x = "Variable", y = "Importancia") +
  theme_minimal()

# -------------------------------------
# 10. Generación de datos futuros (2025–2026)
# -------------------------------------
fechas_futuras <- expand.grid(
  anio = 2025:2026,
  mes = 1:12,
  marca_nombre = unique(df_ventas_completo$marca_nombre),
  modelo_nombre = unique(df_ventas_completo$modelo_nombre),
  pais_nombre = unique(df_ventas_completo$pais_nombre)
)

# Enriquecer con datos económicos
fechas_futuras <- fechas_futuras %>%
  left_join(df_paises %>% select(nombre, id), by = c("pais_nombre" = "nombre")) %>%
  rename(pais_id = id) %>%
  left_join(df_indicadores, by = c("pais_id", "anio")) %>%
  left_join(df_ipc, by = c("pais_id" = "pais", "anio", "mes")) %>%
  rename(
    pib = pib_valor,
    tasa_interes = tasa_interes,
    confianza_consumidor = confianza_consumidor,
    valor_ipc = valor_ipc
  )

# Convertir a factores según entrenamiento
fechas_futuras <- fechas_futuras %>%
  mutate(
    mes_factor = factor(mes, levels = levels(train_data$mes_factor)),
    marca_factor = factor(marca_nombre, levels = levels(train_data$marca_factor)),
    pais_factor = factor(pais_nombre, levels = levels(train_data$pais_factor))
  )

# Validación de valores faltantes
if(any(is.na(fechas_futuras[, c("anio", "mes_factor", "marca_factor", "pais_factor", "pib", "tasa_interes", "confianza_consumidor", "valor_ipc")]))) {
  warning("Hay NA en algunas variables predictoras de fechas_futuras. Revisar datos.")
}

# -------------------------------------
# 11. Predicción de ventas futuras
# -------------------------------------
fechas_futuras$prediccion_ventas <- predict(rf_model, data = fechas_futuras)$predictions

# Mostrar primeras predicciones
head(fechas_futuras %>% select(anio, mes, pais_nombre, marca_nombre, modelo_nombre, prediccion_ventas))

# -------------------------------------
# 12. Visualización de predicciones para un caso específico
# -------------------------------------
pais_elegido <- "Argentina"
marca_elegida <- unique(fechas_futuras$marca_nombre)[1]
modelo_elegido <- unique(fechas_futuras$modelo_nombre)[10]

df_grafico <- fechas_futuras %>%
  filter(
    anio == 2025,
    pais_nombre == pais_elegido,
    marca_nombre == marca_elegida,
    modelo_nombre == modelo_elegido
  ) %>%
  arrange(mes)

ggplot(df_grafico, aes(x = mes, y = prediccion_ventas)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "darkblue", size = 2) +
  scale_x_continuous(breaks = 1:12) +
  labs(
    title = glue("Predicción mensual de ventas para {marca_elegida} {modelo_elegido} en {pais_elegido} - 2025"),
    x = "Mes",
    y = "Ventas Predichas"
  ) +
  theme_minimal()


# -------------------------------------
# ESTIMACIÓN DE LA MUESTRA
# -------------------------------------
# Tamaño de la muestra usando fórmula clásica (p=0.5, Z=1.96, e=5%)
n_poblacion <- nrow(df_ventas_completo)
Z <- 1.96
p <- 0.5
e <- 0.05
n_muestra <- round((Z^2 * p * (1 - p)) / (e^2) / (1 + ((Z^2 * p * (1 - p)) / (e^2 * n_poblacion))))
cat("🔹 Tamaño estimado de muestra:", n_muestra, "\n")

# -------------------------------------
# MARCAS MÁS VENDIDAS
# -------------------------------------
top_marcas <- df_ventas_completo %>%
  group_by(marca_nombre) %>%
  summarise(total_ventas = sum(cantidad_vendida)) %>%
  arrange(desc(total_ventas)) %>%
  slice(1:10)
print(top_marcas)

# -------------------------------------
# MEDIDAS DE RESUMEN
# -------------------------------------
summary_stats <- summary(df_ventas_completo$cantidad_vendida)
cat("🔹 Medidas de resumen de ventas:\n")
print(summary_stats)

# -------------------------------------
# MEDIDAS DE POSICIÓN
# -------------------------------------
cuartiles <- quantile(df_ventas_completo$cantidad_vendida, probs = c(0.25, 0.5, 0.75))
cat("🔹 Cuartiles:\n")
print(cuartiles)

# -------------------------------------
# MEDIDAS DE DISPERSIÓN
# -------------------------------------
desviacion_estandar <- sd(df_ventas_completo$cantidad_vendida)
rango <- range(df_ventas_completo$cantidad_vendida)
cat("🔹 Desviación estándar:", desviacion_estandar, "\n")
cat("🔹 Rango:", rango[2] - rango[1], "\n")

# -------------------------------------
# MEDIDAS DE TENDENCIA CENTRAL
# -------------------------------------
media <- mean(df_ventas_completo$cantidad_vendida)
mediana <- median(df_ventas_completo$cantidad_vendida)
moda <- Mode(df_ventas_completo$cantidad_vendida)  # Usando DescTools
cat("🔹 Media:", media, "\n")
cat("🔹 Mediana:", mediana, "\n")
cat("🔹 Moda:", moda, "\n")

# -------------------------------------
# PROBABILIDAD DE UN EVENTO
# -------------------------------------
# Probabilidad de vender más de 100 unidades
prob_evento <- mean(df_ventas_completo$cantidad_vendida > 100)
cat("🔹 Probabilidad de vender más de 100 unidades:", round(prob_evento, 4), "\n")

# -------------------------------------
# REGRESIÓN Y CORRELACIÓN
# -------------------------------------
modelo_lineal <- lm(cantidad_vendida ~ pib + tasa_interes + confianza_consumidor + valor_ipc, data = df_ventas_completo)
cat("🔹 Resumen del modelo de regresión lineal:\n")
print(summary(modelo_lineal))

# Correlación entre variables económicas y ventas
variables_corr <- df_ventas_completo %>%
  select(cantidad_vendida, pib, tasa_interes, confianza_consumidor, valor_ipc)

cor_matrix <- cor(variables_corr)
cat("🔹 Matriz de correlación:\n")
print(round(cor_matrix, 2))


###########################
# GRAFICAS DE APOYO / UMG #
###########################
library(ggplot2)
library(dplyr)
install.packages('corrplot')
library(corrplot)

# 1. Gráfico de barras: Top 10 marcas más vendidas
# -------------------------------------------------
top_marcas <- df_ventas_completo %>%
  group_by(marca_nombre) %>%
  summarise(total_ventas = sum(cantidad_vendida, na.rm = TRUE)) %>%
  arrange(desc(total_ventas)) %>%
  slice(1:10)

ggplot(top_marcas, aes(x = reorder(marca_nombre, total_ventas), y = total_ventas)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +  # Mejora la legibilidad para etiquetas largas
  labs(
    title = "Top 10 marcas más vendidas",
    x = "Marca",
    y = "Total de ventas"
  ) +
  theme_minimal()

# 2. Boxplot: Distribución de cantidad vendida
# --------------------------------------------
ggplot(df_ventas_completo, aes(y = cantidad_vendida)) +
  geom_boxplot(fill = "lightgreen", outlier.color = "red") +
  labs(
    title = "Distribución de la cantidad vendida",
    y = "Cantidad vendida"
  ) +
  theme_minimal()

# 3. Histograma con líneas de media y mediana
# -------------------------------------------
ggplot(df_ventas_completo, aes(x = cantidad_vendida)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  geom_vline(aes(xintercept = mean(cantidad_vendida, na.rm = TRUE)), color = "red", linetype = "dashed", size = 1, show.legend = TRUE) +
  geom_vline(aes(xintercept = median(cantidad_vendida, na.rm = TRUE)), color = "blue", linetype = "dashed", size = 1) +
  labs(
    title = "Histograma de ventas con media (rojo) y mediana (azul)",
    x = "Cantidad vendida",
    y = "Frecuencia"
  ) +
  theme_minimal()

# 4. Gráfico de pastel: Probabilidad de ventas > 100
# --------------------------------------------------
prob_evento <- mean(df_ventas_completo$cantidad_vendida > 100, na.rm = TRUE)

df_prob <- data.frame(
  categoria = c("≤ 100 unidades", "> 100 unidades"),
  probabilidad = c(1 - prob_evento, prob_evento)
)

ggplot(df_prob, aes(x = "", y = probabilidad, fill = categoria)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(
    title = "Distribución de probabilidad: ventas > 100 unidades",
    fill = "Categoría"
  ) +
  theme_void()

# 5. Matriz de correlación: Variables numéricas
# --------------------------------------------
# Selección de columnas numéricas relevantes
num_cols <- df_ventas_completo %>%
  select_if(is.numeric)

# Matriz de correlación
cor_matrix <- cor(num_cols, use = "pairwise.complete.obs")

# Visualización en mapa de calor
corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black", addCoef.col = "black")

# 6. Diagrama de dispersión con línea de regresión
# ------------------------------------------------
# PIB  como predictor económico
ggplot(df_ventas_completo, aes(x = pib, y = cantidad_vendida)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red", se = TRUE) +
  labs(
    title = "Relación entre PIB y ventas",
    x = "Producto Interno Bruto",
    y = "Cantidad vendida"
  ) +
  theme_minimal()
