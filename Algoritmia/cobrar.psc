Algoritmo cobrar 
	Definir horadeentrada, minutodeentrada, horadesalida, minutodesalida Como Real
	Definir totaldeHoras, totalsdeminutos, minutostotalesdelacuenta Como Real 
	Definir totaldecobro Como Entero
	//entrada de datos 
	
	Escribir "ingrese la hora de entrada (formato 24 horas)"
	Leer horadeentrada
	Escribir "ingrese los minutos de entrada (formato 24 horas)"
	Leer minutodeentrada
	
	Escribir "ingrese la hora de salida (formato 24 horas)"
	Leer horadesalida
	Escribir "ingrese los minutos de salida (formato 24 horas)"
	Leer minutodesalida
	
	//proceso 
	//calcular el tiempo total en minutos
	totaldeHoras= horadesalida-horadeentrada
	totalsdeminutos= minutodesalida-minutodesalida
	
	Si totalsdeminutos<0 Entonces
		totalsdeminutos =totalsdeminutos+60
		//totalminutos+=60 
		totaldeHoras= totaldeHoras-1
	Fin Si
	//convertir todo a minutos 
	totalsdeminutos=(totaldeHoras*60)+totalsdeminutos
	
	//calcular e cobro 
	
	totaldecobro=0 
	//calcular el cobro por hora completa 
	Si totalsdeminutos>=60 Entonces
		totaldecobro=totaldecobro+(totalsdeminutos/60)*15
	Fin Si
	//CALCULAR EL COBRO DE CADA FRACCION 
	minutosrestantes = totalsdeminutos%60 
	Si minutosrestantes>0 Entonces
		facciones15min=minutosrestantes
		//cobrar cada fraccion 
		totaldecobro=totaldecobro+fracciones15min * 6 
	Fin Si
	//resultado 
	Escribir "el total a pagar es de :", totaldecobro, "pesos"
FinAlgoritmo
