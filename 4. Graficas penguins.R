

# ______________Gráficos____________
#  Se va a trabajar con la matriz penguins

#--------------------------------------------
# Importación de matriz 
#-------------------------------------------

# Import data / from excel /browse / seleccionar archivo / aceptar

#--------------------------------------
#    Exploracion
#-----------------------------------

dim(penguins)
colnames(penguins)
str(penguins)
anyNA(penguins)

# Estadistica descriptiva
summary(penguins)

#-----------------------------------------
# Configuración de la matriz
#------------------------------------------

# visualización de una sola columna
penguins$especie

#1.- Convertir las variables categóticas a factores
penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))

penguins$isla

penguins$isla<-factor(penguins$isla, 
                      levels=c("Torgersen", "Biscoe", "Dream"))

penguins$genero

penguins$genero<-factor(penguins$genero, 
                        levels=c("male", "female"))
penguins$año

penguins$año<-factor(penguins$año, 
                     levels=c("2007", "2008", "2009"))

str(penguins)

summary(penguins)

View(penguins)

# ---Este paso no es opcional.---
# 2.- Creamos una nueva matriz de datos donde se seleccionan
# las columnas de la 2 a la 9.
BD1<-penguins[,2:9]


#---------------------------------
#   Librerías
#----------------------------------
install.packages("ggplot2")

library(ggplot2)


# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("lightpink","cyan2")

# 2.- Creacion del grafico

BX<-ggplot(penguins, aes(x=genero, y=largo_pico_mm))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("Género")+
  ylab("largo de la aleta (mm)")+
  theme_bw()

# 3.- Visualización del boxplot
BX

#--------------------------------------------------
#            Gráfico de barras
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("deeppink", "cyan3", "chartreuse1")

# 2.- Creación del gráfico
GB1<-ggplot(penguins, aes(x=año))+
  geom_bar(colour= "darkturquoise", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

# 4.- Barras verticales

GB2<-ggplot(penguins, aes(x=año))+
  geom_bar(colour= "darkturquoise", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  coord_flip()+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

#--------------------------------------------------
#           Histograma
#---------------------------------------------------

# 1.- Construccion del grafico

HG<-ggplot(penguins, aes(x=largo_aleta_mm))+
  geom_histogram(binwidth=.8,col="darkblue", fill="blueviolet",alpha=0.4)+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()
# si subo el alpha se pone más fuerte el color el histograma y si bajo el alpha se aclara

# 2.- Visualizacion del grafico
HG

HG<-ggplot(penguins, aes(x=largo_aleta_mm))+
  geom_histogram(binwidth=.8,col="darkblue", fill="blueviolet",alpha=0.4)+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

#----------------------------------
#   Grafico de dispersion
#-----------------------------------

# 1.- Construccion del grafico



# 2.- Visualizacion del objeto
GD



GD<-ggplot(penguins, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes(color=especie))+
  scale_color_manual(values =c("blue","red", "pink"))+
  ggtitle("Gráfico de dispersión")+
  xlab("largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()

#para cambiar el color de la especie y la x y la y, se debe colocar scale_color_manual(values=c(y los colores))+
#-------------------------------
#  Organizacion de graficos
#-------------------------------

# 1.- Descargar el paquete gridExtra

install.packages("gridExtra")

# 2.- Abrir la libreria
library(gridExtra)

# 3.- Organizacion 2 graficos en una fila y dos columnas 
grid.arrange(BX,GB1, nrow=1, ncol=2)

# 4.- Organizacion 3 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG, nrow=2, ncol=2)

# 5.- Organizacion 4 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG,GD, nrow=2, ncol=2)