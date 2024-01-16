

#1.- Se exporta la matriz de datos con extención .csv 
textos4<-read_delim("N4.csv")
head(textos4)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read_delim("stop_words.csv")
View(stop_words)

#3.- Instalar paqueterias y abrir librerias
library(tidytext)
library(wordcloud)
library(dplyr)

#4.- limpieza y generacion de nuevo texto

word_freq4 <- textos4 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>% 
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq4)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#5.- Creacion de nube de palabras
wordcloud(words = word_freq4$word,
          freq = word_freq4$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink", "red", "purple"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)