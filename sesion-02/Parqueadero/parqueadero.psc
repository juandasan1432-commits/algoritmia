Algoritmo parqueadero
    // se definen las variables
    // tipo guarda si es carro o moto, minutos el tiempo y horas las horas que se cobran
    Definir tipo, minutos, horas Como Entero
	
    // tarifa guarda el precio por hora y valor lo que debe pagar
    Definir tarifa, valor Como Real
	
    // factura guarda si el cliente tiene factura de compra (S/N)
    Definir factura Como Caracter
	
    // preguntamos el tipo de vehiculo
    Escribir "Tipo de vehículo (1 = carro, 2 = moto):"
    Leer tipo
	
    // pedimos los minutos que estuvo en el parqueadero
    Escribir "Minutos de permanencia:"
    Leer minutos
	
    // preguntamos si tiene factura para aplicar el descuento
    Escribir "¿Tiene factura de compra? (S/N)"
    Leer factura
	
    // convertimos la respuesta a mayuscula para que no hayan problemas si responde en minusculas
    factura <- Mayusculas(factura)
	
    // primera condicion, si los minutos son negativos muestra error
    Si minutos < 0 Entonces
        Escribir "Los minutos no pueden ser negativos"
		
    SiNo
        // segun el tipo de vehiculo tiene un valor
        Segun tipo Hacer
            1:
                // si es carro la hora cuesta 4000
                tarifa <- 4000
            2:
                // si es moto la hora cuesta 2000
                tarifa <- 2000
				
            De Otro Modo:
                // si no es carro ni moto la tarifa queda en 0
                tarifa <- 0
        FinSegun
		
        // si la tarifa es 0 significa que el tipo de vehiculo no es valido
        Si tarifa = 0 Entonces
            Escribir "Tipo de vehículo no válido"
        SiNo
            // si estuvo 15 minutos o menos no paga nada
            Si minutos <= 15 Entonces
                valor <- 0
            SiNo
                // calculamos las horas y redondeamos hacia arriba, si se pasa un minuto es una hora mas
                // con minutos + 59 y trunc cobramos la hora completa
                horas <- trunc((minutos + 59) / 60)
				
                // se multiplican las horas por la tarifa del vehiculo
                valor <- horas * tarifa
				
                // si valor supera 30000, el maximo que paga es 30000
                Si valor > 30000 Entonces
                    valor <- 30000
                FinSi
				
                // si tiene factura de compra se aplica descuento del 50%
                Si factura = "S" Entonces
                    // dividimos el valor entre 2 para cobrar la mitad
                    valor <- valor / 2
                FinSi
            FinSi
			
            // imprimimos el valor final que debe pagar el cliente
            Escribir "Valor a pagar: $", valor
        FinSi
    FinSi
FinAlgoritmo
