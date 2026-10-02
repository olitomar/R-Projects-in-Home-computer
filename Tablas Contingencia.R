## Tablas Contingencia

datos <- read_excel("datos2.xlsx")

# tabla_contingencia <-(table(asignarnombre[c("x", "y")]))
# colnames(tabla_contingencia)=c("x1", "x2","x3","x4")
# rownames(tabla_contingencia)=c("y1", "y2", "y3", "y4")
# tabla_contingencia

tabla_contingencia2 <-(table(datos[c("TIPOPASTA", "SEXO")]))
#es decir las variables de interes
tabla_contingencia2

TipoPasta<-c("Suave","Medio","Fuerte")
Hombre<-as.vector(table(datos$TIPOPASTA[datos$SEXO=="H"]))
Mujer<-as.vector(table(datos$TIPOPASTA[datos$SEXO=="M"]))

tabla22<-data.frame(TipoPasta,Hombre,Mujer) #Tabla

#Para dar formato a la tabla utilizamos lo siguiente:
if(!require("flextable")){
  install.packages("flextable")
  library("flextable")
}

tabla<-flextable::align(flextable(tabla22),align="center",part = "all")
tabla<-set_caption(tabla, "Cuadro 1: ")
tabla <- add_footer_lines(tabla, "Fuente: ")
tabla <- color(tabla, part ="all", color ="black")
tabla <- color(tabla, part ="header", color ="black")
tabla <- color(tabla, part ="footer", color ="black")
tabla