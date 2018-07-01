#Usar objetos de series de tiempo
library(tidyverse)

#cargando los datos de ventas y haciendo un plot con series de tiempo ts()

s <- read.csv("data/ts-example.csv")
s.ts <- ts(s)
plot(s.ts)

#Creando series de tiempo con puntos de tiempo por año

s.ts.a <- ts(s, start = 2002)
s.ts.a
plot(s.ts.a)

#Creando series de tiempo mensual

s.ts.m <- ts(s, start = c(2002,1), frequency = 12)
s.ts.m
plot(s.ts.m)  

#espeficicando por cuatrimestre


s.ts.q <- ts(s, start = 2002, frequency = 4)
s.ts.q
plot(s.ts.q)


# Cuando la serie comienza
 start(s.ts.m)

# cuando la serie termina
end(s.ts.m)

# cual es la frecuencia?
frequency(s.ts.m)

#Creando series de tiempo con multiples series 


prices <- read.csv("data/prices.csv")
prices.ts <- ts(prices, start=c(1980,1), frequency = 12)


plot(prices.ts, plot.type = "single", col = 1:2)
legend("topleft", colnames(prices.ts), col = 1:2, lty = 1)

