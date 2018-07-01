# Suavizado y pronóstico utilizando el método de Holt-Winters
library(tidyverse)
library(forecast)

infy <- read.csv("data/infy-monthly.csv")

#Creando la serie de tiempo

infy.ts <- ts(infy$Adj.Close, start = c(1999,3), frequency = 12)

#Realizando Holt-Winters suavizado exponencial

infy.hw <- HoltWinters(infy.ts)

#Ploteando los resultados

plot(infy.hw, col = "blue", col.predicted = "red")

#Examinando los errores al cuadrado

infy.hw$SSE

#Apha, beta y gamma usados para el filtro

infy.hw$alpha
infy.hw$beta
infy.hw$gamma

#Buscando los valores equipados

head(infy.hw$fitted)


# Generando el plot con el pronostico suavisado con model Holt-Winters

infy.forecast <- forecast(infy.hw, h=20)

plot(infy.forecast)
