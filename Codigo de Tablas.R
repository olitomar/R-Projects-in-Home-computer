#Codigo para tablas

if(!require("readxl")){
  install.packages("readxl")
  library("readxl")
}
asignarnombre <- read_excel("ColabOnline.xlsx")

str(asignarnombre)
any(is.na.data.frame(asignarnombre))
#summary(asignarnombre)

head(asignarnombre)

asignarnombre$Universidad

## Tablas no formales en R
stabla <-c(1, 2, 3,5)

Tabla.abs <- table(stabla)
Tabla.abs


Tabla.rel<-prop.table(Tabla.abs)
Tabla.rel

Tabla.rel<-round(prop.table(Tabla.abs)*100,2)
Tabla.rel


Tabla.acum <- cumsum(Tabla.abs)
Tabla.acum

Tabla.rel2 <-prop.table(Tabla.abs)
Tabla.acum2 <- cumsum(Tabla.rel2)
Tabla.acum2

Tabla.rel3 <-cumsum(round(prop.table(Tabla.abs)*100,2))
Tabla.rel3



tabla<-flextable::align(flextable(tabla22),align="center",part = "all")
tabla<-set_caption(tabla, "Cuadro 1: ")
tabla <- add_footer_lines(tabla, "Fuente: ")
tabla <- color(tabla, part ="all", color ="black")
tabla <- color(tabla, part ="header", color ="black")
tabla <- color(tabla, part ="footer", color ="black")
tabla