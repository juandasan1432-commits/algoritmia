Algoritmo Calificaciones
	Definir aprobados Como Entero
	Definir promedio, nota_alta, nota_baja, nota, suma Como Real
	Definir reprobado Como Lógico
	
	//se define todo dsde 0 para empezar a agregarle valores
	suma <- 0
	aprobados <- 0
	reprobado <- Falso
	nota_alta <- 0
	
	//si se empieza desde 0 ninguna nota entra, entonces se empieza desde la mayor
	nota_baja <- 5
	
	//se piden las notas
	Para i<-1 Hasta 5 Hacer
		Escribir 'escriba su nota'
		Leer nota
		//se le agregan los valores a suma, para sacar promedio
		suma <- suma+nota
		
		//se calculan los aprobados, si no aprueban se tiran directamente a reprobado
		Si nota>=3 Entonces
			aprobados <- aprobados+1
		SiNo
			reprobado <- Verdadero
		FinSi
		//se calcula nota mas alta
		Si nota>nota_alta Entonces
			nota_alta <- nota
		FinSi
		//se calcula nota mas baja
		Si nota<nota_baja Entonces
			nota_baja <- nota
		FinSi
	FinPara
	//se saca el promedio entre notas y el # de notas
	promedio <- (suma/5)
	
	//imprime resultados
	Escribir 'promedio de las notas es: ', promedio
	Escribir 'estudiantes aprobados: ', aprobados
	Escribir 'la nota mas alta es: ', nota_alta
	Escribir 'la nota mas baja es: ', nota_baja
	
	//se condiciona lo que va a imprimir, si al menos uno es verdadero o sea que minimo alguien reprobo
	Si reprobado=Verdadero Entonces
		Escribir 'minimo un estudiante reprobo'
	SiNo
		Escribir 'Todos los estudiantes aprobaron'
	FinSi
FinAlgoritmo
