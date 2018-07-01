#Filtrando por tiempo, series de tiempo

library(tidyverse)
library(stats)

#cargando los datos

s <- read.csv("data/ts-example.csv")

#Creando un vector para el filtrado funcion rep()

n <- 7

wts <- rep(1/n, n)

class(s$sales)

#calculando valores simetricos filtrados

s.filter1 <- filter(s$sales, filter = wts, sides = 2)
s.filter2 <- filter(s$sales, filter = wts, sides = 1)

plot(s$sales, type = "l")
lines(s.filter1, col = "blue", lwd = 3)
lines(s.filter2, col = "red", lwd = 3)
