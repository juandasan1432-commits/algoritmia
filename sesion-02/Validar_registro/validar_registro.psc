Algoritmo validar_registro
	// definimos edad como numero entero
	Definir edad Como Entero
	// definimos respuesta como letra
	Definir respuesta Como Cadena
	// ingrese la edad
	Escribir 'cuantos años tienes?'
	Leer edad
	// ingrese si esta de acuerdo con los terminos y condiciones s o n
	Escribir '¿acepta los termino? (S/N)'
	Leer respuesta
	// se cambia la respuesta a mayusculas ya sea s o n
	respuesta <- Mayusculas(respuesta)
	// si la edad es mayor o igual a 14 Y la respuesta es S, mostrara registro exitoso
	Si edad>=14 Y respuesta='S' Entonces
		Escribir 'registro exitoso'
	SiNo
		// si no cumple las dos condiciones mostrara registro fallido
		Escribir 'fallo registro'
	FinSi
FinAlgoritmo
