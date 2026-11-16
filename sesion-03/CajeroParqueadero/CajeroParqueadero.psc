Algoritmo CajeroParqueadero
	Definir valor_, carros, total como enteros
	Escribir "ingresa el valor"
	leer valor_
	carros = 0
	total = 0
	
	Mientras valor_ <> 0 Hacer
        total <- total + valor_
		carros <- carros + 1
		
		Escribir "ingresa el valor_"
		leer valor_
	Fin Mientras
		
	escribir "total de carros :" , carros
	Escribir "total de recaudo :", total
FinAlgoritmo
