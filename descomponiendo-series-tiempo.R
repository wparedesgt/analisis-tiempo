#Descomponiendo series de tiempo
library(tidyverse)
library(stats)

#cargando los datos y realizando el primer plot

prices <- read.csv("data/prices.csv")
prices.ts = ts(prices, start = c(1980,1), freq = 12)
plot(prices.ts[,2])

#Usando la función stl para realizar una descomposición Loess de los precion del gas

prices.stl <- stl(log(prices.ts[,1]), s.window = "period")

plot(prices.stl)


#moviendo los promedios con la funcion decompose


prices.dec <- decompose(log(prices.ts[,2]))
plot(prices.dec)

#Adjustando los precion del gas por temporada


gas.seasonally.adjusted <- prices.ts[,2] - prices.dec$seasonal 

plot(gas.seasonally.adjusted)


