//primer funcion obtiene el subtotal.
SubProceso subtotal <- leerpedido
	Definir precio, cantidad como entero
	//la variable subtotal comienza en 0 para despues asignarle el valor.
	subtotal <- 0
	//se pide digitar el precio, si el precio es 0 no entra en el ciclo, por eso agregue la cantidad adentro de el, si es 0 no la pregunta.
	Escribir "digite el precio de su producto"
	leer precio
	
	mientras precio <> 0 Hacer
		Escribir "digite la cantidad"
		leer cantidad
		//la variable subtotal es igual al precio por la cantidad, se va sumando en cada vuelta.
		subtotal <- subtotal + precio * cantidad
		
		escribir "digite el precio de su producto"
		Escribir "ingrese 0 para terminar"
		leer precio
	FinMientras
FinSubProceso

//segunda funcion, para calcularporcentaje la use en propina y en impuesto
SubProceso porcentajes <- calcularporcentaje (subtotal , porcentaje)
	//porcentajes es igual al subtotal con el porcentaje que se le asigne divido entre 100
	porcentajes <- subtotal * porcentaje /100
FinSubProceso

//tercera funcion para imprimir la factura
SubProceso imprimirfactura (subtotal, impuesto, propina)
	//se crea la variable total, es la que va a sumar el valor completo de la factura
	Definir  Total como real 
	//total es igual a la suma de todos los parametros
	Total <- subtotal+impuesto+propina
	
	//imprimimos cada valor
	Escribir "FACTURA"
	Escribir "El subtotal de la cuenta es:" subtotal
	Escribir "El impuesto de la cuenta es:" impuesto
	Escribir "El valor de la propina es:" propina
	Escribir "El total de la cuenta es:" Total
FinSubProceso

//comienzo de algortimo 
Algoritmo FacturaRestaurante
	//se definen los 3 parametros como real porque pueden tener # decimales
	Definir subtotal,impuesto,propina Como Real
	//le asignamos las funciones a cada parametro
	subtotal <-leerpedido()
	impuesto <-calcularporcentaje(subtotal,8)
	propina <-calcularporcentaje(subtotal,10)
	//llamamos a la factura y la mostramos en pantalla
	imprimirfactura(subtotal, impuesto, propina)
	
FinAlgoritmo

	

