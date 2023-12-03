#Practica 1

#VECTORES

#Generamos un vector con los números del 1 al 50

v1_50 <- 1:50
print(v1_50)

#Lo repetimos usando seq()
v1_50_seq <- seq(v1_50)

#Hacemos lo mismo pero lo incrementamos en 0.5 usando by
v1_50h <- seq(1, 50, by=0.5)
print(v1_50h)

#Calcular el tamaño del vector anterior y guardarlo en variable.

tam_v1_50h <- length(v1_50h)
print(tam_v1_50h)
#Tipo de dato que es length()

tipo_length <- class(tam_v1_50h)
print(tipo_length)
print(typeof(tam_v1_50h))
# Diferencia entre typeof y class. En una Matriz, typeof() devuelve el tipo de los elementos,
# class() el tipo o clase de objeto (vector o matriz), en ese caso, usamos class

#Vector de 10 elementos entre 1 y 22 con invrementos iguales

v1_22_10 <- seq(1,22,length=10)
print(v1_22_10)

#Vector de tamaño 4 usando rep()
vrep_1x4 <- rep(c(1:22), 4)#Repite 4 veces el vector de 1 a 22
print(vrep_1x4)

#Vector de 1 a 5 usando rep() y sin usar seq()
vrep <- rep(1:5, 3)
print(vrep)

#Vector con los elementos de 1-4 y del 8-9
sub_v1_22_10 <- c(v1_22_10[1:4],v1_22_10[8:9])
print(sub_v1_22_10)

#MATRICES

#Matriz con los números del 1 al 9 ordenados por filas
matrix(data = 1:9, nrow = 3, ncol = 3, byrow = TRUE)


#Matriz con los números del 1 al 9 ordenados por filas
matrix(data = 1:9, nrow = 3, ncol = 3, byrow = FALSE)

#Los siguientes vectores representan la recaudación en 
#euros, el número de semanas en cartelera y la recaudación total de 
#ciertas películas en los cines españoles durante.

the_creator <- c(702465, 1, 702465)
barbie <- c(61351, 11, 33935231)
campeonesx <- c(235394, 7, 1732961)

cine_29_01_oct <- matrix(data = c(the_creator, barbie, campeonesx), nrow = 3, ncol = 3, byrow = TRUE)

#Usamos class y typeof pasandole la matriz

class(cine_29_01_oct)
typeof(cine_29_01_oct)

#Volvemos a hacer lo del paso de arriba pero pasando cine_29_01_oct[1,1]

class(cine_29_01_oct[1,1])
typeof(cine_29_01_oct[1,1])

#Vamos a nombras las filas y columnas de la matriz en R
filas <- c("The Creator", "Barbie", "Campeones X")
columnas <- c("rec_semana", "semanas_cart", "rec_total")
cine_29_01_oct <- matrix(data = c(the_creator, barbie, campeonesx), nrow = 3, ncol = 3, byrow = TRUE,
                         dimnames = list(filas, columnas))
print(cine_29_01_oct)

#Añadir nueva columna a la matriz con el % recaudado por semana sobre el total
the_creator <- c(702465, 1, 702465, (702465/702465)*100)
barbie <- c(61351, 11, 33935231, (61351/33935231)*100)
campeonesx <- c(235394, 7, 1732961, (235394/1732961)*100)
filas <- c("The Creator", "Barbie", "Campeones X")
columnas <- c("rec_semana", "semanas_cart", "rec_total", "%_semana")
cine_29_01_oct <- matrix(data = c(the_creator, barbie, campeonesx), nrow = 3, ncol = 4, byrow = TRUE,
                         dimnames = list(filas, columnas))
print(cine_29_01_oct)

#Localiza en la fuente de datos dos películas que 
#estén en cartelera 2 semanas. Repite los pasos anteriores. 
#¿Cómo varía la recaudación de segunda semana respecto a la primera? #Las ganancias en la primera semana son mucho mayores, en las 3 que he elegido
#casi el 80% de lo recaudado ha sido en la primera semana.
hunger_games <- c(975813 , 2, 3734986, (975813/3734986)*100)
black_friday <- c(147101, 2, 562452, (147101/562452)*100)
old_oak <- c(48555, 2, 217422, (48555/217422)*100)
filas <- c("Juegos del hambre: La balada de pajaros cantores y serpientes, Los", "Black Friday", "Viejo roble, El")
columnas <- c("rec_semana", "semanas_cart", "rec_total", "%_semana")
cine_2_sem <- matrix(data = c(hunger_games, black_friday, old_oak), nrow = 3, ncol = 4, byrow = TRUE,
                         dimnames = list(filas, columnas))
print(cine_2_sem)

#Une las matrices por filas
ambas <- rbind(cine_29_01_oct, cine_2_sem)
ambas

#FACTORES

#Tenemos el vector c(“Elefante”, “Girafa”, “Asno”, “Caballo”), obtén a partir de éste el vector de variables cualitativas

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector) 
print(factor_animals_vector)

#A partir del vector c(“High”, “Low”, “High”,“Low”, “Medium”), 
#utiliza los niveles c(“Low”, “Medium”, “High”), 
#aplica orden y guárdalo en el vector factor_temperature_vector

temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
print(factor_temperature_vector)

#Aplica la función summary() a temperature_vector y factor_temperature_vector

summary(temperature_vector) #Ofrece la cantidad de elementos que hay en esa variable y de que tipo son
summary(factor_temperature_vector)#Ofrece la cantidad de elementos que hay de cada uno