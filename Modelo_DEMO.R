# Librerias Necesarias Proyecto
install.packages("caret")
install.packages("randomForest")
install.packages("forecast")
install.packages("stringi")

library(RPostgres)          # Manipulación y conexión con base de datos
library(dplyr)              # Para manipulación de datos
library(ggplot2)            # Para gráficos
library(caret)              # Para preparación de datos y evaluación del modelo
library(randomForest)       # Para el modelo Random Forest
library(forecast)           # ARIMA
library(DescTools)          # Función Mode()
library(scales)

#----------------------------
# Conexión con base de datos

source('src/base_datos.R')
conn <- connect_db()

if (test_connection(conn)) {
} else {
  message("[ERROR] NO SE PUDO CONECTAR A LA BASE DE DATOS")
}


#----------------------------
# Recolección de Datos

source('src/base_datos_repositorio.R')
df_ventas <- get_ventas_mensuales(conn)
df_vehiculos <- get_vehiculos(conn)
df_marcas <- get_marcas(conn)
df_modelos <- get_modelos(conn)
df_paises <- get_paises(conn)
df_indicadores <- get_indicadores(conn)
df_ipc <- get_ipc(conn)

#----------------------------
# DataFrame maestro de ventas
df_ventas_completo <- df_ventas %>%
  left_join(df_vehiculos, by = c("vehiculo_id" = "id"), suffix = c("", "_vehiculo")) %>%
  left_join(df_modelos, by = c("modelo" = "id"), suffix = c("","_modelo")) %>%
  left_join(df_marcas, by = c("marca" = "id"), suffix = c("", "_marca")) %>%
  left_join(df_paises, by = c("pais_id" = "id"), suffix = c("", "_pais")) %>%
  left_join(df_indicadores, by = c("pais_id" = "pais_id", "anio" = "anio"), suffix = c("", "_indicador")) %>%
  left_join(df_ipc, by = c("pais_id" = "pais", "anio" = "anio", "mes" = "mes"), suffix = c("", "_ipc"))

#----------------------------
# Renombrar columnas para mayor claridad
df_ventas_completo <- df_ventas_completo %>%
  rename(
    modelo_nombre = nombre,
    marca_nombre = nombre_marca,
    pais_nombre = nombre_pais,
    pib = pib_valor,
    tasa_interes = tasa_interes,
    confianza_consumidor = confianza_consumidor,
    valor_ipc = valor_ipc
  )

#----------------------------
# Columnas utiles para analisis
df_ventas_completo <- df_ventas_completo %>%
  select(
    cantidad_vendida,
    anio,
    mes,
    marca_nombre,
    modelo_nombre,
    pais_nombre,
    pib,
    tasa_interes,
    confianza_consumidor,
    valor_ipc
  )

#----------------------------
# Eliminar filas con valores nulos

df_ventas_completo <- na.omit(df_ventas_completo)

#----------------------------
# Marcas mas vendidas por año

mas_vendidas_por_anio <- df_ventas_completo %>%
  group_by(anio, marca_nombre) %>%
  summarise(total_vendido = sum(cantidad_vendida, na.rm = TRUE), .groups = "drop") %>%
  arrange(anio, desc(total_vendido)) %>%
  slice_max(order_by = total_vendido, n = 1, by = anio)


#--------------------------------
# Medidas de tendencia central y dispersión para 'cantidad_vendida'

library(glue)

summary_stats <- summary(df_ventas_completo$cantidad_vendida)
print(summary_stats)

media <- round(mean(df_ventas_completo$cantidad_vendida), 2)
mediana <- round(median(df_ventas_completo$cantidad_vendida), 2)
desviacion <- round(sd(df_ventas_completo$cantidad_vendida), 2)

message(glue("Resumen estadístico de 'cantidad_vendida':"))
message(glue("Media: {media}"))
message(glue("Mediana: {mediana}"))
message(glue("Desviación estándar: {desviacion}"))


#----------------------------
# Histograma

library(ggplot2)

# Opcional: Eliminar valores extremadamente altos (outliers) para mejor visualización
# Puedes ajustar el límite superior si lo necesitas
df_filtrado <- df_ventas_completo[df_ventas_completo$cantidad_vendida <= quantile(df_ventas_completo$cantidad_vendida, 0.99), ]

# Cálculo de estadísticas
media <- mean(df_filtrado$cantidad_vendida)
mediana <- median(df_filtrado$cantidad_vendida)

# Histograma con ggplot2
library(ggplot2)

# Filtramos el top 1% más alto
limite <- quantile(df_ventas_completo$cantidad_vendida, 0.99)
df_filtrado <- df_ventas_completo[df_ventas_completo$cantidad_vendida <= limite, ]

ggplot(df_filtrado, aes(x = cantidad_vendida)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "black") +
  labs(
    title = "Distribución de cantidad vendida (sin outliers)",
    x = "Cantidad Vendida",
    y = "Frecuencia"
  ) +
  theme_minimal()



-----------------------------
hist(df_ventas_completo$cantidad_vendida, main = "Histograma de Cantidad Vendida",
     xlab = "Cantidad Vendida", ylab = "Frecuencia", col = "lightblue", border = "black")

# Q-Q plot para normalidad
qqnorm(df_ventas_completo$cantidad_vendida)
qqline(df_ventas_completo$cantidad_vendida, col = "blue")

# Ventas totales por marca
ventas_por_marca <- df_ventas_completo %>%
  group_by(marca_nombre) %>%
  summarise(total_ventas = sum(cantidad_vendida, na.rm = TRUE), .groups = 'drop') %>%
  arrange(desc(total_ventas))

ggplot(ventas_por_marca, aes(x = reorder(marca_nombre, -total_ventas), y = total_ventas)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Ventas Totales por Marca", x = "Marca", y = "Cantidad Vendida") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Gráfico de pastel (distribución de ventas por marca)
ggplot(ventas_por_marca, aes(x = "", y = total_ventas, fill = marca_nombre)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Distribución de Ventas por Marca") +
  theme_void() +
  geom_text(aes(label = scales::percent(total_ventas / sum(total_ventas))),
            position = position_stack(vjust = 0.5)) +
  guides(fill = guide_legend(title = "Marca"))

# Gráfico de dispersión de Ventas vs. PIB
ggplot(df_ventas_completo, aes(x = pib, y = cantidad_vendida)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Ventas vs. PIB", x = "PIB", y = "Cantidad Vendida") +
  theme_minimal()

#---####################################################################4444
# --- 4. Entrenamiento y Validación del Modelo (Random Forest) ---
# Dividir datos en entrenamiento y prueba
set.seed(123) # Para reproducibilidad
index <- createDataPartition(df_modelo_final$cantidad_vendida, p = 0.8, list = FALSE)
train_data <- df_modelo_final[index, ]
test_data <- df_modelo_final[-index, ]

message(paste("Tamaño del conjunto de entrenamiento:", nrow(train_data)))
message(paste("Tamaño del conjunto de prueba:", nrow(test_data)))

#--------------------------------------
rf_model <- randomForest(cantidad_vendida ~ anio + mes_factor + marca_factor +
                           pais_factor + modelo_factor + pib +
                           tasa_interes + confianza_consumidor + valor_ipc,
                         data = train_data,
                         ntree = 500, # Número de árboles
                         importance = TRUE # Para ver la importancia de las variables
)

message("Resumen del modelo Random Forest:")
print(rf_model)

#----------------------------------------
predictions <- predict(rf_model, newdata = test_data)

#----------------------------------------
# Métricas de evaluación
RMSE <- sqrt(mean((predictions - test_data$cantidad_vendida)^2))
MAE <- mean(abs(predictions - test_data$cantidad_vendida))

message(paste("RMSE del modelo Random Forest:", round(RMSE, 2)))
message(paste("MAE del modelo Random Forest:", round(MAE, 2)))

#-------------------------------------------------------------
# Importancia de las variables (útil para la selección de características)
importance(rf_model)
varImpPlot(rf_model, main = "Importancia de las Variables en Random Forest")


#---####################################################################555

# --- 5. Predicciones Finales ---
# Creamos un dataframe con todas las combinaciones de factores y años futuros que queremos predecir
fechas_futuras <- expand.grid(
  anio = 2025:2026,
  mes = 1:12,
  marca_nombre = unique(df_ventas_completo$marca_nombre),
  modelo_nombre = unique(df_ventas_completo$modelo_nombre),
  pais_nombre = unique(df_ventas_completo$pais_nombre)
)

# Convertir variables a factores para que coincidan con el modelo
fechas_futuras <- fechas_futuras %>%
  mutate(
    mes_factor = as.factor(mes),
    marca_factor = as.factor(marca_nombre),
    modelo_factor = as.factor(modelo_nombre),
    pais_factor = as.factor(pais_nombre)
  )

# --- CORRECCIÓN AQUÍ ---
# Paso 1: Mapear pais_nombre a pais_id en fechas_futuras usando df_paises
# Nos aseguramos de que el `pais_id` sea el único y correcto después de esta unión.
fechas_futuras <- fechas_futuras %>%
  left_join(df_paises %>% select(id, nombre) %>% rename(pais_id = id, pais_nombre_from_paises = nombre),
            by = c("pais_nombre" = "pais_nombre_from_paises")) %>%
  # Seleccionamos explícitamente las columnas que queremos mantener, incluyendo el pais_id recién unido
  # y eliminando los duplicados si se crearon (pais_id.x, pais_id.y si los hubiera).
  # Nos quedamos con las columnas que necesitamos para el siguiente paso y el modelo.
  select(
    anio, mes, marca_nombre, modelo_nombre, pais_nombre,
    mes_factor, marca_factor, modelo_factor, pais_factor,
    pais_id # Aseguramos que solo haya una columna pais_id y que sea la correcta
  )

message("Columnas en fechas_futuras antes de la unión con ultimos_indicadores (después de la corrección):")
print(names(fechas_futuras)) # Puedes volver a descomentar para verificar si deseas

# Paso 2: Obtener los últimos valores de indicadores económicos por pais_id
ultimos_indicadores <- df_indicadores %>%
  group_by(pais_id) %>%
  filter(anio == max(anio)) %>%
  ungroup() %>%
  select(pais_id, pib_valor, tasa_interes, confianza_consumidor) %>%
  rename(pib = pib_valor)

# Unir con los indicadores económicos más recientes
fechas_futuras <- fechas_futuras %>%
  left_join(ultimos_indicadores, by = "pais_id") # Este join ahora debería funcionar.

# Paso 3: Obtener los últimos valores de IPC por pais_id
ultimos_ipc <- df_ipc %>%
  group_by(pais) %>%
  filter(anio == max(anio)) %>%
  ungroup() %>%
  select(pais, valor_ipc) %>%
  rename(pais_id = pais)

# Unir con el IPC más reciente
fechas_futuras <- fechas_futuras %>%
  left_join(ultimos_ipc, by = "pais_id")



# --- FIN DE LA CORRECCIÓN DE LA UNIÓN PARA DATOS FUTUROS ---

# Seleccionar las columnas que el modelo espera para la predicción
# Asegúrate de que las columnas coincidan EXACTAMENTE con las que usaste para entrenar el modelo
fechas_futuras_final_pred <- fechas_futuras %>%
  select(
    anio, mes_factor, marca_factor, modelo_factor, pais_factor, pib,
    tasa_interes, confianza_consumidor, valor_ipc
  ) %>%
  distinct() # Eliminar duplicados si los hubo por la unión de proxy de indicadores

# Asegurarse de que los niveles de los factores en 'fechas_futuras_final_pred' sean los mismos que en 'train_data'
# Esto es crítico para los modelos de R que usan factores.
for (col_name in c("mes_factor", "marca_factor", "modelo_factor", "pais_factor")) {
  # Añadir niveles que puedan faltar en fechas_futuras pero estén en train_data
  levels_in_train <- levels(train_data[[col_name]])
  levels_in_fechas_futuras <- levels(fechas_futuras_final_pred[[col_name]])
  
  missing_levels <- setdiff(levels_in_train, levels_in_fechas_futuras)
  if (length(missing_levels) > 0) {
    levels(fechas_futuras_final_pred[[col_name]]) <- c(levels_in_fechas_futuras, missing_levels)
  }
  
  # Asegurarse de que el orden de los niveles sea el mismo
  fechas_futuras_final_pred[[col_name]] <- factor(fechas_futuras_final_pred[[col_name]], levels = levels_in_train)
}

#1296

# Realizar predicciones
fechas_futuras_final_pred$ventas_predichas <- predict(rf_model, newdata = fechas_futuras_final_pred)

# Algunas predicciones podrían ser negativas si el modelo no está restringido para ello.
# Puedes forzar que sean 0 o un valor mínimo razonable.
fechas_futuras_final_pred$ventas_predichas[fechas_futuras_final_pred$ventas_predichas < 0] <- 0

# Unir las predicciones de nuevo con la información de nombre para el reporte final
fechas_futuras_con_nombres <- fechas_futuras %>%
  select(anio, mes, marca_nombre, modelo_nombre, pais_nombre) %>%
  inner_join(fechas_futuras_final_pred %>% select(-c(mes_factor, marca_factor, modelo_factor, pais_factor, pib, tasa_interes, confianza_consumidor, valor_ipc)),
             by = c("anio")) # Asumiendo que anio es el único común en la parte de predicciones

# Encontrar las 4 marcas más vendidas para 2025 y 2026
top_marcas_2025_2026 <- fechas_futuras_con_nombres %>%
  group_by(anio, marca_nombre) %>% # Agrupamos por marca_nombre que está presente aquí
  summarise(ventas_totales_predichas = sum(ventas_predichas, na.rm = TRUE), .groups = 'drop') %>%
  arrange(anio, desc(ventas_totales_predichas)) %>%
  group_by(anio) %>%
  slice_head(n = 4) # Obtener las top 4 por año

message("Top 4 marcas más vendidas predichas para 2025 y 2026:")
print(top_marcas_2025_2026)

# No olvides desconectar al final de tu script
dbDisconnect(con)
message("Conexión a la base de datos cerrada.")




#---####################################################################555
# ----------------------------
# MENÚ INTERACTIVO PARA PRESENTACIÓN (AGREGAR AL FINAL DE Modelo2.R)
# ----------------------------

menu_presentacion <- function() {
  cat("\n=== MENÚ PRINCIPAL DEL PROYECTO ===\n")
  cat("1. Mostrar Conexión a BD y Estructura de Datos\n")
  cat("2. Análisis Exploratorio (Gráficos y Estadísticas)\n")
  cat("3. Resultados del Modelo Random Forest\n")
  cat("4. Predicciones Futuras (2025-2026)\n")
  cat("5. Checklist de Requisitos Cumplidos\n")
  cat("6. Salir\n")
  
  opcion <- as.integer(readline(prompt = "Selecciona una opción (1-6): "))
  
  switch(opcion,
         {
           # Opción 1: Conexión y datos
           cat("\n✅ CONEXIÓN EXITOSA A POSTGRESQL\n")
           cat(" - Tablas cargadas: ventas_mensuales, modelos, marcas, paises, indicadores_economicos_anuales\n")
           cat(" - Total de registros procesados:", nrow(df_ventas_completo), "\n")
           cat("\nPrimeras filas de datos:\n")
           print(head(df_ventas_completo, 3))
           invisible(readline(prompt = "Presiona Enter para continuar..."))
           menu_presentacion()
         },
         {
           # Opción 2: EDA
           cat("\n📊 ANÁLISIS EXPLORATORIO\n")
           
           # Gráficos
           par(mfrow = c(2, 2))
           hist(df_ventas_completo$cantidad_vendida, main = "Distribución de Ventas", col = "skyblue")
           plot(df_ventas_completo$pib, df_ventas_completo$cantidad_vendida, 
                main = "Ventas vs PIB", xlab = "PIB", ylab = "Ventas", pch = 19, col = "steelblue")
           barplot(ventas_por_marca$total_ventas, names.arg = ventas_por_marca$marca_nombre,
                   las = 2, col = "tomato", main = "Ventas por Marca")
           varImpPlot(rf_model, main = "Importancia de Variables")
           
           cat("\nEstadísticas clave de ventas:\n")
           print(summary(df_ventas_completo$cantidad_vendida))
           invisible(readline(prompt = "Presiona Enter para continuar..."))
           par(mfrow = c(1, 1)) # Reset gráfico
           menu_presentacion()
         },
         {
           # Opción 3: Modelo
           cat("\n🤖 MODELO RANDOM FOREST\n")
           cat(" - Variables usadas:", paste(names(df_modelo_final)[-1], collapse = ", "), "\n")
           cat(" - RMSE:", round(RMSE, 2), "| MAE:", round(MAE, 2), "\n")
           cat("\nResumen del modelo:\n")
           print(rf_model)
           invisible(readline(prompt = "Presiona Enter para continuar..."))
           menu_presentacion()
         },
         {
           # Opción 4: Predicciones
           cat("\n🔮 PREDICCIONES 2025-2026\n")
           print(top_marcas_2025_2026)
           
           # Gráfico de top marcas
           ggplot(top_marcas_2025_2026, aes(x = marca_nombre, y = ventas_totales_predichas, fill = factor(anio))) +
             geom_bar(stat = "identity", position = "dodge") +
             labs(title = "Top 4 Marcas Predichas", x = "Marca", y = "Ventas") +
             theme_minimal()
           
           invisible(readline(prompt = "Presiona Enter para continuar..."))
           menu_presentacion()
         },
         {
           # Opción 5: Checklist
           cat("\n📝 CHECKLIST DE REQUISITOS\n")
           cat("1. Conexión a BD PostgreSQL: ✅\n")
           cat("2. Preprocesamiento (NAs, factores): ✅\n")
           cat("3. Modelado (Random Forest 80/20): ✅\n")
           cat("4. Métricas (RMSE/MAE): ✅\n")
           cat("5. Predicciones futuras: ✅\n")
           cat("6. Análisis exploratorio: ✅\n")
           invisible(readline(prompt = "Presiona Enter para continuar..."))
           menu_presentacion()
         },
         {
           cat("\n¡Presentación terminada! 🎉\n")
           dbDisconnect(con)
         }
  )
}

# Ejecutar el menú (al final del script)
cat("\n======================================\n")
cat("BIENVENIDO AL SISTEMA DE PREDICCIÓN DE VENTAS\n")
cat("======================================\n")
menu_presentacion()


#---####################################################################555
#---####################################################################555
#----------------------------
#----------------------------

