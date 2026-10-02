x <- c("A","A","A","A","A","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","C","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","D","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E","E")

#table(x)

tablagrafico1<-prop.table(table(x))
tablagrafico1<-round(100*tablagrafico1,2) #En porcentaje y redondeando
n <- length(tablagrafico1)

rownames(tablagrafico1) = c("Una Estrella", "Dos Estrellas","Tres Estrellas","Cuatro Estrellas", "Cinco Estrellas")

sectores <-pie (tablagrafico1, labels=paste(tablagrafico1,"%"), main="Cuadro Nº 5\n Distribucion de Alojamientos Turisticos segun categoria\n Costa Rica 2015", col=rainbow(n), sub = "Fuente:  Instituto Costarricense de Turismo.")

legend("topright", c("Una Estrella", "Dos Estrellas","Tres Estrellas","Cuatro Estrellas", "Cinco Estrellas"), cex = 0.8, fill =rainbow(n))

