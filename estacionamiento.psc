Algoritmo Estacionamiento
	
	Definir horaentrada, minutoentrada, segundosentrada, horasalida, minutosalida, segundosalida Como real
	Definir totalhoras, totalMinutos, totalSegundos, minutostotalescuenta Como real
	Definir totalcobro Como real
	
	
	Escribir "Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrsda (formato de 0 - 59)"
	Leer minutoentrada
	Escribir "Ingrese los segundos de entrada (formato de 0 - 59)"
	Leer segundosentrada
	Escribir "Ingrese la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "Ingrese los minutos de salida (formato de 0 - 59)"
	Leer minutosalida
	Escribir "Ingrese los segundos de salida (formato de 0 - 59)"
	Leer segundosalida
	
	
	totalSegundos = (horasalida - horaentrada) * 3600 + (minutosalida - minutoentrada) * 60 + (segundosalida - segundosentrada)
	
	
	Si totalSegundos < 0 Entonces
		totalSegundos = totalSegundos + 86400 
	Fin Si
	totalhoras = trunc(totalSegundos / 3600)
	totalMinutos = trunc((totalSegundos % 3600) / 60)
	totalSegundos = totalSegundos % 60
	totalcobro = 0
	Si totalMinutos >= 60 Entonces
		totalcobro = totalcobro + (totalhoras * 15)
	Fin Si
	minutosrestantes = totalMinutos % 60
	Si minutosrestantes > 0 Entonces
		fracciones15min = trunc(minutosrestantes / 15)
		totalcobro = totalcobro + fracciones15min * 6
	Fin Si
	Escribir "El tiempo total es de: " , totalhoras , " horas " , totalMinutos , " minutos " , totalSegundos , " segundos"
	Escribir "El total a pagar es de: " , totalcobro , "pesos"
	
FinAlgoritmo
