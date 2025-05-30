library(DBI)

get_ventas_mensuales <- function(con) {
  result <- dbReadTable(con, "ventas_mensuales")
  return(result)
}

get_vehiculos <- function(con){
  result <- dbReadTable(con,"vehiculos")
  return(result)
}

get_modelos <- function(con){
  result <- dbReadTable(con,"modelos")
  return(result)
}


get_marcas <- function(con){
  result <- dbReadTable(con,"marcas")
  return(result)
}

get_paises <- function(con){
  result <- dbReadTable(con,"paises")
  return(result)
}

get_indicadores <- function(conn){
  result <- dbReadTable(conn, "indicadores_economicos_anuales")
  return(result)
}

get_ipc <- function(con){
  result <- dbReadTable(con,"ipc_mensual")
  return(result)
}