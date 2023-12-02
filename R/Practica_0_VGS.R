#Ejercicio 0 de PRIA de Víctor García Serrano 

#Primeras operaciones aritméticas.

#Suma
5+5

#Resta
5-6

#Multiplicación
7*5

#División
45/2
44/2

#Resto de una división (También llamado módulo)
37%%2

#Potencia
3^2

#Operación con número pi y logaritmo e (πe2)
pi*2.718^2

#Operación matemática (−2−2√)/2π
(-2-sqrt(2))/(2*pi)

#Ahora vamos a crear variables y a asignarles valores

uno <- 5+5
print(uno)

dos <- 5-6
print(dos)

tres <- 7*5
print(tres)

cuatro <- 45/2
print(cuatro)

cinco <- 44/2
print(cinco)

seis <- 45%%2
print(seis)

siete <- pi*2.7181^2
print(siete)

ocho <- (-2-sqrt(2))/(2*pi)
print(ocho)

#Ejecución de las siguientes líneas y ver que ocurre

mis_manzanas <- 5
mis_naranjas <- "seis"
mi_fruta <- mis_manzanas + mis_naranjas #Observo que esta operación no se ha realizado
#debido a que no se puede hacer una operación matemática de un valor numérico y un string

#solución de ese problema

mis_naranjas <- 6
mi_fruta <- mis_manzanas + mis_naranjas #Esto daría 11 porque ambos valores son numéricos ahora

mis_manzanas <- "cinco"
mi_fruta <- paste0(mis_manzanas, mis_naranjas) #Esto daría cincoseis, ya que ahora los dos valores son string

#Creación de variables de distintos tipos, numérico, tezto y booleano

numero <- 42.5
texto <- "fp rules"
booleano <- FALSE

#cambiamos sus valores

numero <- 42
texto <- "R es fácil"
booleano <- TRUE

#Imprimimos el valor de las 3 variables

#Cada una en una línea
print(numero)
print(texto)
print(booleano)

#Las 3 en la misma línea
paste0(numero, ", ", texto, ", ", booleano)

#Vemos el tipo de las variables

class(numero)
class(texto)
class(booleano)

#Averiguar que tipo de variable es la función date()

class(date())

#Cantidad de tipos básicos que tiene R

#numeric, character, logical, integer, double, complex
#En total 6.

#Para que sirve Rscript?
#Para ejecutar scripts de R, ejemplo, Rscript "C:/Users/victo/Desktop/Repaso Examen PRIA/Practica_0_VGS.R"
#Tiene le mismo uso que source()


