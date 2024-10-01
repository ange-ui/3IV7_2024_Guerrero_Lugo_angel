Algoritmo Reservas_Hotel
	
	Dimension habitaciones[10] 
	Dimension reservas[10]
	ocupadas <- 0
	
	
	Para i <- 1 Hasta 10 Con Paso 1
		habitaciones[i] <- "Disponible"
		reservas[i] <- ""
	FinPara
	
	
	Repetir
		Escribir "Sistema de Gesti�n de Reservas del Hotel"
		Escribir "1. Registrar Reserva"
		Escribir "2. Cancelar Reserva"
		Escribir "3. Consultar Disponibilidad"
		Escribir "4. Consultar Ocupaci�n"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
				
			1:
				Escribir "Registro de Reservas"
				Escribir "Ingrese n�mero de habitaci�n (1 a 10):"
				Leer habitacion
				Si habitacion < 1 O habitacion > 10 Entonces
					Escribir "N�mero de habitaci�n inv�lido"
				Sino
					Si habitaciones[habitacion] = "Disponible" Entonces
						Escribir "Ingrese nombre del cliente:"
						Leer cliente
						Escribir "Ingrese fechas de la reserva:"
						Leer fechas
						habitaciones[habitacion] <- "Ocupada"
						
						ocupadas <- ocupadas + 1
						Escribir "Reserva confirmada para la habitaci�n ", habitacion
					Sino
						Escribir "La habitaci�n ya est� ocupada"
					FinSi
				FinSi
				
				
			2:
				Escribir "Cancelaci�n de Reserva"
				Escribir "Ingrese n�mero de habitaci�n a cancelar (1 a 10):"
				Leer habitacion
				Si habitacion < 1 O habitacion > 10 Entonces
					Escribir "N�mero de habitaci�n inv�lido"
				Sino
					Si habitaciones[habitacion] = "Ocupada" Entonces
						habitaciones[habitacion] <- "Disponible"
						reservas[habitacion] <- ""
						ocupadas <- ocupadas - 1
						Escribir "Reserva cancelada para la habitaci�n ", habitacion
					Sino
						Escribir "La habitaci�n no est� reservada"
					FinSi
				FinSi
				
				
			3:
				Escribir "Habitaciones Disponibles:"
				Para i <- 1 Hasta 10 Con Paso 1
					Si habitaciones[i] = "Disponible" Entonces
						Escribir "Habitaci�n ", i, " est� disponible."
					FinSi
				FinPara
				
				
			4:
				porcentaje_ocupacion <- (ocupadas / 10) * 100
				Escribir "El porcentaje de ocupaci�n del hotel es: ", porcentaje_ocupacion, "%"
				
				
			5:
				Escribir "Saliendo del sistema..."
				
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente nuevamente."
				
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo


