library(DBI)
library(RPostgres)

connect_db <- function() {
  con <- dbConnect(
    RPostgres::Postgres(),
    dbname = "metodos_numericos",
    host = "localhost",
    port = 5432,
    user = "postgres",
    password = "postgres"
  )
  return(con)
}

disconnect_db <- function(con) {
  dbDisconnect(con)
}


test_connection <- function(con) {
  tryCatch({
    result <- dbGetQuery(con, "SELECT 1 AS test")
    if (result$test == 1) {
      message("✅ Conexión exitosa a la base de datos.")
      return(TRUE)
    } else {
      message("⚠️ Conexión realizada, pero la prueba falló.")
      return(FALSE)
    }
  }, error = function(e) {
    message("❌ Error al conectar: ", e$message)
    return(FALSE)
  })
}