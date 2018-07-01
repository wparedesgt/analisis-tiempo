#Analisis serie temporal
library(tidyverse)
library(ggthemes)


#Cargando los datos bajados de https://finance.yahoo.com/ 

AMZN <- read.csv("data/AMZN.csv")
GOOG <- read.csv("data/GOOG.csv")

#Convirtiendo los data set de fecha

AMZN$Date <- as.Date(AMZN$Date)
GOOG$Date <- as.Date(GOOG$Date)

AMZN %>% ggplot(aes(Date, Close)) + geom_line(aes(color="amazon")) +
  geom_line(data=GOOG,aes(color="google")) +
  labs(color="Legend") +
  scale_colour_manual("", breaks = c("amazon","google"),
                      values = c("blue", "brown")) +
  ggtitle("Precios de cierre de las acciones: Amazon and Google ") + 
  theme(plot.title = element_text(lineheight=.7, face="bold"))

ggsave("plots/cierre-google-amazon.png")


