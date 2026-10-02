x <- c(1,2,3)
table(x)

x <- c(1,1,2,2,2,3)
table(x)

x <- c(1,1,2,2,2,2,2,3)
table(x)

prop.table(table(x))

round(prop.table(table(x)),2)

round(prop.table(table(x))*100,2)