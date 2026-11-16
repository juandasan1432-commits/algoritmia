Algoritmo Propina_y_cuenta
	definir cuenta,propina,personas,total Como real
	
	Escribir "valor de la cuenta"
	Leer cuenta
	escribir "cuanto quieres dejas de propina"
	Leer propina
	Escribir "cuantas personas son"
	leer personas
	
	propina <- (cuenta * propina) /100
	total <- (cuenta +propina)
	personas <- (cuenta /personas)
	
	Escribir "el valor de la cuenta es : " cuenta
	Escribir "el porcentaje de la propina es: " propina
	Escribir "el total del valor que cada persona debe pagar es: " personas
	
	
	
FinAlgoritmo
