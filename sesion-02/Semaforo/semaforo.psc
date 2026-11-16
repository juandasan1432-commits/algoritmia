Algoritmo semaforo
	Definir items Como Real
	// pedimos cuantos items se tienen en inventario
	Escribir 'cuantos items tenemos del producto'
	Leer items
	// primer condicion si es menor a 0 imprimira error
	Si items<0 Entonces
		Escribir 'ERROR, INGRESE UNA CANTIDAD VALIDA'
	FinSi
	// segunda condicion si es igual a 0 Rojo agotado
	Si items=0 Entonces
		Escribir ' ROJO, AGOTADO'
	FinSi
	// tercera condicion, si hay entre 1 y 10, amarrillo pedir mas
	Si items>=1 Y items<=10 Entonces
		Escribir 'AMARILLO, HAY QUE PEDIR LO MAS RAPIDO POSIBLE'
	FinSi
	// cuarta condicion, si tiene mas de 10 items es verde, todo bien
	Si items>10 Entonces
		Escribir 'VERDE, MUY BUENA CANTIDAD'
	FinSi
FinAlgoritmo
