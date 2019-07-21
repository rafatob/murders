library(tidyverse)
murders<-read_csv("data/murders.csv")
murders<-murders %>% mutate(region = factor(region),rate = total / population *10^5)
save(murders, file = "rda/murders.rda") #rda stands for R data, similar a .RData

#el objeto data procesada estará guardada en el directorio rda
#esto es práctico porque generando el objeto de datos lo podemos 
#utilizar para analisis y graficos que pueden ser complejos
#y demandantes de tiempo, así no debemos correr el codigo cada
#vez que comenzamos el proyecto

