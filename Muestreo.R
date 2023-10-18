# Muestreo aleatorio simple
# Generar número aleatorios para una muestra de 61 personas en
# una población de 73 alumnas/os del 5to semestre de la LEP BENV. 
# Confiabilidad del 95% y 5% de error.
# x= del 1 al 73, que corresponde a la población.
# side=61, que corresponde al tamaño de la muestra.

# Con el siguiente link se calculó la muestra:
#  <http://www.macorr.com/sample-size-calculator.htm>
  
#Ejemplo 1
sample(1:73,61, replace=FALSE)

#Ejemplo 2
sample(1:73,61, replace=FALSE)

#Ejemplo 3 cambiando FALSE por TRUE
sample(1:73,61, replace=TRUE)

##EJERCICIOS
#1.1- Calcula el tamaño de muestra para una poblacción
#de 83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educacción Primaria de la BENV.


#Muestra= 68

#1.2.- Una vez que obtengas el tamaño de la muestra,
#selecciona el número de lista de las personas que 
#formaran parte de la muestra.

sample(1:83, 68, replace=FALSE)

#1.3.- Crea un vector llamado muestra con
#los números de lista de las personas que forman
#parte de la muestra.
#Forma larga: copiar y pegar, después poner las comas a cada número


muestra<-c(26,1,34,16,19,59,60,73,56,44,66,23,4,64,37,21,79,62,50,24,
           42,43,35,39,25,70,10,15,45,76,14,33,75,17,30,7,68,55,22,53,
           77,83,46, 49,8,13,72,27,32,18,5,51,12,80,67,6,11,38,9,3,28,
           54,81,61,36,20,48,82)

#Forma corta: copiar y pegar la función y mostrar

muestra2<-sample(1:83,68, replace= FALSE)
muestra2


# Muestreo estratificado

#Matricula de la escuela: 328

#Primero:47

#Segundo: 58

#Tercero: 51

#Cuarto: 51

#Quinto: 61

#Sexto: 60

#Muestras:
# Con confiabilidad del 95% y error del 5%
  
#Alumnos de primer grado:47

#Muestra de primero:42

Primero<-sample(1:47,42, replace=FALSE)
Primero

# Alumnos de segundo grado:51

Segundo<-sample(1:58, 51, replace=FALSE)
Segundo

#Alumnos de tercer grado: 51

Tercero<-sample(1:51, 45, replace=FALSE)
Tercero

#Alumnos de cuarto grado:
  
Cuarto<-sample(1:51, 45, replace=FALSE)
Cuarto

#Alumnos de quinto grado:
  
Cuarto<-sample(1:61, 45, replace=FALSE)
Cuarto

#Alumnos de sexto grado:

Sexto<-sample(1:60, 45, replace=FALSE)
Sexto
