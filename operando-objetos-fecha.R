#Operando objetos de fecha

library(tidyverse)

dt <- as.Date("1/1/2001", format = "%m/%d/%Y") 
dt 
dt+100
dt+31

dt1 <- as.Date("1/1/2001", format = "%m/%d/%Y")
dt2 <- as.Date("2/1/2001", format = "%m/%d/%Y")

#operaciones simples suma y resta

dt2-dt1
dt1-dt2

#Comparacion

dt2>dt1

dt2 == dt1

#Creando una secuencia de datos

d1 <- as.Date("1980/1/1")
d2 <- as.Date("1982/1/1")

seq(d1, d2, "months")

d3 <- as.Date("1980/1/5")

seq(d1, d3, "day")

#Moviendo intervalos

seq(d1, d2, "2 months")

seq(from = d1, by = "4 months", length.out = 4 )

seq(from = d1, by = "3 weeks", length.out = 2)[2]

