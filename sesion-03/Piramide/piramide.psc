Algoritmo piramide
	definir filas, j, i Como Entero
	// se pide el numero de filas
	Escribir "ingresa el numero de filas de la piramide"
	leer filas
	//dice hasta cuando entrar al ciclo, hasta numero de filas
	para i <- 1 hasta filas Hacer
		//se organizan los espacios, filas - la posicion de la fila (i) + 1 sin el mas uno se ve desalineada a la izquierda
		para j <- 1 Hasta filas - i +1  Hacer
			escribir Sin Saltar " "
		FinPara
		//se ponen los asteriscos "*" 2* el numero de filas (i) - 1 para que siempre me quede un numero impar, o 2 asteriscos mas en cada fila
		Para j <- 1 hasta 2*i-1 Hacer
			escribir Sin Saltar "*"
		FinPara
		//el salto de linea para cada filas
		Escribir ""
	FinPara
FinAlgoritmo
