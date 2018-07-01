#análisis preliminares en datos de series de tiempo

library(tidyverse)

#Cargando los datos y mostrando un plot

wm <- read.csv("data/walmart.csv")

plot(wm$Adj.Close, type = "l")

#Movimientos diarios

d <- diff(wm$Adj.Close)

plot(d, type = "l")

#histograma

hist(d, prob = TRUE, ylim = c(0,0.8), main = "Walmart stock", col = "blue")

lines(density(d), lwd = 3)

#Calculando el retorno de un periodo

wmm <- read.csv("data/walmart-monthly.csv")

#Agregando funcion en series de tiempo

wmm.ts <- ts(wmm$Adj.Close)

#Calculando la diferencia

d <- diff(wmm$Adj.Close)

#Agregando el retorno 

wmlag <- lag(wmm.ts, k= -1)

wmm.return <- d/lag(wmm.ts, k=-1)
hist(wmm.return, prob = TRUE, col="blue")
diff(wmm$Adj.Close, lag = 2)


