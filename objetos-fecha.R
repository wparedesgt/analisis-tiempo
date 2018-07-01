#Crear y examinar objetos de fecha
library(tidyverse)

Sys.Date()

#Crear una fecha con un string

as.Date("12/07/72", format = "%m/%d/%y")

#Fechas desde numeros

dt <- as.Date("1-1-70", format = "%m-%d-%y")

as.numeric(dt)  
as.Date("Jan 15, 2015", format = "%b %d, %Y")
as.Date("January 15, 15", format = "%B %d, %y")


dt <- 1000
class(dt) <- "Date"
dt   


dt <- -1000
class(dt) <- "Date"
dt      

as.Date(1000, origin = as.Date("1980-03-31"))
as.Date(-1000, origin = as.Date("1980-03-31"))


dt <- as.Date(1000, origin = as.Date("1980-03-31"))
dt

#Mostrar solo el año

format(dt, "%Y")

#Obtener el mes 

format(dt, "%m")
as.numeric(format(dt, "%m"))

#Obteniendo el mes como un string

format(dt, "%B")
months(dt)

#Abreviando el mes en un string

format(dt, "%b")

#Día de la semana

weekdays(dt)

#quarters -Cuarto

quarters(dt)

#Dia en el calendario juliano

julian(dt)

#Desde una fecha en especifica

julian(dt, origin = as.Date("1980-03-31/"))

