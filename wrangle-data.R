library(tidyverse)
murders<-read_csv("data/murders.csv")
murders<-murders %>% mutate(region = factor(region),rate = total / population *10^5)
save(murders, file = "rda/murders.rda") #rda stands for R data, similar a .RData

#el objeto data procesada estar� guardada en el directorio rda
#esto es pr�ctico porque generando el objeto de datos lo podemos 
#utilizar para analisis y graficos que pueden ser complejos
#y demandantes de tiempo, as� no debemos correr el codigo cada
#vez que comenzamos el proyecto

