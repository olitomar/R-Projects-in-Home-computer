#ejercicio e) preparacion para el Lab

if(!require("readxl")){
  install.packages("readxl")
  library("readxl")
}

if(!require("flextable")){
  install.packages("flextable")
  library("flextable")
}

#leer los datos del archivo excel
datos <- read_excel("Loslagos.xlsx")
head(datos)

lbrazo_clases <- cut(datos$LBRAZO, breaks = 4) #crear 4 clases de frecuencia
lbrazo_clases
lbrazo_absoluta <- as.vector(table(lbrazo_clases)) #crear tabla de frecuencia
lbrazo_absoluta
lbrazo_porcentaje <- as.vector(round(prop.table(table(lbrazo_clases)) * 100,2)) #crear tabla frecuencia porcentual
#lbrazo_porcentaje
#Crear tabla de totales

# Unir los datos en un solo data.frame usando data.frame()
tabla_unica <- data.frame(
  Clases = levels(lbrazo_clases),
  Frecuencia_Absoluta = lbrazo_absoluta,
  Porcentaje = lbrazo_porcentaje
 # Totales = ?
)

tabla_unica

tabla <- flextable::align(flextable(tabla_unica),align="center",part = "all")
tabla <- set_caption(tabla, "Cuadro 1: Tabla de Frecuencia de Longitud de brazo")
tabla <- add_footer_lines(tabla, "Fuente: Estudio por muestreo en el I semestre del año 2014, Universidad del Lago")
tabla <- color(tabla, part ="all", color ="black")
tabla <- color(tabla, part ="header", color ="black")
tabla <- color(tabla, part ="footer", color ="black")

tabla
