Algoritmo validar_registro
	definir edad Como Entero
	definir respues Como Caracter
	Escribir "cuantos años tienes?"
	leer edad
	Escribir "¿acepta los termino? (S/N)
	leer respuesta
	
	respuesta <- Mayusculas(respuesta)
	si edad >= 14 y respuestas = "s" Entonces
		Escribir "registro exitoso"
	SiNo
		Escribir "fallo registro"
	FinSi
	
FinAlgoritmo
