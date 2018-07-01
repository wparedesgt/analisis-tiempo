#Modelo Arima AutoRegressive Integrated Moving Average (ARIMA)

library(tidyverse)
library(forecast)

#cargando los datos

infy <- read.csv("data/infy-monthly.csv")

#Creando la serie de tiempo

infy.ts <- ts(infy$Adj.Close, start = c(1999,3), frequency = 12)

#corriendo el modelo arima

infy.arima <- auto.arima(infy.ts)

#Generando la prediccion con el modelo arima

infy.forecast <- forecast(infy.arima, h=10)

#dibujando el pronostico

plot(infy.forecast)
