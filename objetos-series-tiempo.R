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

