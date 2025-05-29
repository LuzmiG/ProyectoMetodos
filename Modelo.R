#Proyecto 

#Conectar a base de datos 
install.packages("RPostgres")
library(RPostgres)
library(dplyr) 

db_host <- "localhost"
db_port <- 5432
db_name <- "metodos_numericos"
db_user <- "postgres"
db_password <- "123"

con <- dbConnect(RPostgres::Postgres(),
                 host = db_host,
                 port = db_port,
                 dbname = db_name,
                 user = db_user,
                 password = db_password)

# Verificar la conexión
if (dbIsValid(con)) {
  message("Conexión a la base de datos exitosa!")
} else {
  stop("Fallo al conectar a la base de datos.")
}

#--------------------------------------------------------------
# Ejemplo de lectura de datos (una vez que estén cargados)
df_ventas <- dbReadTable(con, "ventas_mensuales")
df_marcas <- dbReadTable(con, "marcas")

#Esta es la que hace la magia las demas solo eran pruebas que daban deepseek 
df_ventas_completo <- dbReadTable(con, "vw_ventas_mensuales")



#--------------------------------------------------------------
# Marcas más vendidas por año
marcas_top <- df_ventas_completo %>%
  group_by(marca_nombre, vehiculo_anio) %>%
  summarise(total_venta = sum(total_venta, na.rm = TRUE)) %>%
  arrange(vehiculo_anio, desc(total_venta))
print(head(marcas_top))
#-----------------------------------------------


#-----------------------------------------------
# Medidas de tendencia central y dispersión para 'cantidad_vendida'
summary(df_ventas_completo$total_venta)
mean(df_ventas_completo$total_venta)
median(df_ventas_completo$total_venta)
sd(df_ventas_completo$total_venta)

#Resultado null o NA, nose si esta bien esto 

#-----------------------------------------------
# Moda 
install.packages("DescTools")
library(DescTools)
Mode(df_ventas_completo$total_venta)

#-----------------------------------------------
# Correlación (ejemplo hipotético si tuvieras PIB en el mismo dataframe)
cor(df_ventas_completo$total_venta, df_ventas_completo$PIB)
#ESTE NO FUNCIONA PORQUE NO HAY PID EN EL df_ventas_completo 
#NEEEEEXT !!!!!

#-----------------------------------------------
# Regresión (ejemplo hipotético)
modelo_regresion <- lm(total_venta ~ PIB + anio, data = df_ventas_completo)
summary(modelo_regresion)
#ESTE NO FUNCIONA PORQUE NO HAY PID EN EL df_ventas_completo 
#NEEEEEXT !!!!!
#-----------------------------------------------
# Test de normalidad (si aplica a tus datos de ventas)
shapiro.test(df_ventas_completo$total_venta) # Para n < 5000
#Sabra Dios que es esto 
#Nexxxt!


#-----------------------------------------------
# Histograma
#mmmm Estan raros los numeros del ejex son letras 
hist(df_ventas_completo$total_venta, main = "Histograma de Cantidad Vendida")

#-----------------------------------------------
# Q-Q plot para normalidad
qqnorm(df_ventas_completo$total_venta)
qqline(df_ventas_completo$total_venta, col = "blue")

#-----------------------------------------------
# Si necesitaras modelar con Poisson (ej. si modelas conteos de ventas por concesionario en un día)
plot(dpois(0:10, lambda = 3), type = "h", main = "Distribución de Poisson (lambda=3)")


#-----------------------------------------------
library(ggplot2)
# Ventas totales por marca
ventas_por_marca <- df_ventas_completo %>%
  group_by(marca_nombre) %>%
  summarise(total_ventas = sum(total_venta, na.rm = TRUE)) %>%
  arrange(desc(total_ventas))

ggplot(ventas_por_marca, aes(x = reorder(marca_nombre, -total_ventas), y = total_ventas)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Ventas Totales por Marca", x = "Marca", y = "Cantidad Vendida") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


ggplot(ventas_por_marca, aes(x = "", y = total_ventas, fill = marca_nombre)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Distribución de Ventas por Marca") +
  theme_void() +
  geom_text(aes(label = scales::percent(total_ventas / sum(total_ventas))),
            position = position_stack(vjust = 0.5)) +
  guides(fill = guide_legend(title = "Marca"))



#-----------------------------------------------
df_resumen_ventas_mes_marca <- df_ventas_completo %>%
   group_by(marca_nombre, venta_mes) %>%
 summarise(
     media_ventas = mean(total_venta, na.rm = TRUE),
     sd_ventas = sd(total_venta, na.rm = TRUE)
   )

ggplot(df_resumen_ventas_mes_marca, aes(x = as.factor(venta_mes), y = media_ventas, fill = marca_nombre)) +
   geom_bar(stat = "identity", position = position_dodge()) +
   geom_errorbar(aes(ymin = media_ventas - sd_ventas, ymax = media_ventas + sd_ventas),
                 position = position_dodge(0.9), width = 0.25) +
   labs(title = "Ventas Mensuales Promedio por Marca con Desviación Estándar",
        x = "Mes", y = "Ventas Promedio") +
   theme_minimal()


#-----------------------------------------------
#AQUI YA EMPIEZA EL MODELO ME EMPIEZA A DAR ERROR Y NO SE QUE ESTOY HACIENDO

install.packages(c("caret", "randomForest", "forecast", "prophet"))
library(caret)
library(randomForest)
library(forecast) # Para modelos de series de tiempo
library(prophet) # Si decides usar Prophet

# Ejemplo de preparación de datos (simplificado)
df_modelo <- df_ventas_completo %>%
   filter(venta_anio <= 2024) %>% # Usar datos hasta 2024 para entrenar
   mutate(
     mes_factor = as.factor(venta_mes),
     marca_factor = as.factor(marca_nombre),
     pais_factor = as.factor(pais_nombre)
     # Si tuvieras PIB, lo incluirías aquí
   )

# Dividir datos (ejemplo)
set.seed(123)
 index <- createDataPartition(df_modelo_final$total_venta, p = 0.8, list = FALSE)
 train_data <- df_modelo_final[index, ]
 test_data <- df_modelo_final[-index, ]



# Ejemplo de modelo Random Forest (muy simplificado)
rf_model <- randomForest(total_venta ~ venta_anio + Venta_mes + marca_factor + pais_factor,
                         data = train_data,
                         ntree = 500)
# print(rf_model)


#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------





dbDisconnect(con)


