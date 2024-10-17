SubProceso Rectangulo(base, altura)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir "El �rea del rect�ngulo es: ", area
	Escribir "El per�metro del rect�ngulo es: ", perimetro
FinSubProceso

SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	Escribir "El �rea del tri�ngulo es: ", area
	Escribir "El per�metro del tri�ngulo es: ", perimetro
FinSubProceso

SubProceso Cuadrado(lado)
	Definir area, perimetro Como Real
	area = lado * lado
	perimetro = 4 * lado
	Escribir "El �rea del cuadrado es: ", area
	Escribir "El per�metro del cuadrado es: ", perimetro
FinSubProceso

SubProceso Pentagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = 5 * lado
	area = (perimetro * apotema) / 2
	Escribir "El �rea del pent�gono es: ", area
	Escribir "El per�metro del pent�gono es: ", perimetro
FinSubProceso

SubProceso Hexagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = 6 * lado
	area = (perimetro * apotema) / 2
	Escribir "El �rea del hex�gono es: ", area
	Escribir "El per�metro del hex�gono es: ", perimetro
FinSubProceso

SubProceso Trapecio(baseMayor, baseMenor, altura, lado1, lado2)
	Definir area, perimetro Como Real
	area = ((baseMayor + baseMenor) * altura) / 2
	perimetro = baseMayor + baseMenor + lado1 + lado2
	Escribir "El �rea del trapecio es: ", area
	Escribir "El per�metro del trapecio es: ", perimetro
FinSubProceso

Algoritmo calculadoradefiguras
	Definir opcion Como Caracter
	Definir base, altura, lado1, lado2, lado3, lado, apotema, baseMayor, baseMenor Como Real
	
	// Crear el men�
	Escribir "Selecciona una opci�n:"
	Escribir "A: �rea y per�metro del rect�ngulo"
	Escribir "B: �rea y per�metro del tri�ngulo"
	Escribir "C: �rea y per�metro del cuadrado"
	Escribir "D: �rea y per�metro del pent�gono"
	Escribir "E: �rea y per�metro del hex�gono"
	Escribir "F: �rea y per�metro del trapecio"
	
	Leer opcion
	
	Segun opcion hacer
		Caso "A":
			Escribir "Ingresa la base del rect�ngulo"
			Leer base
			Escribir "Ingresa la altura del rect�ngulo"
			Leer altura
			Rectangulo(base, altura)
		Caso "B":
			Escribir "Ingresa la base del tri�ngulo"
			Leer base
			Escribir "Ingresa la altura del tri�ngulo"
			Leer altura
			Escribir "Ingresa el lado 1 del tri�ngulo"
			Leer lado1
			Escribir "Ingresa el lado 2 del tri�ngulo"
			Leer lado2
			Escribir "Ingresa el lado 3 del tri�ngulo"
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
		Caso "C":
			Escribir "Ingresa el lado del cuadrado"
			Leer lado
			Cuadrado(lado)
		Caso "D":
			Escribir "Ingresa el lado del pent�gono"
			Leer lado
			Escribir "Ingresa el apotema del pent�gono"
			Leer apotema
			Pentagono(lado, apotema)
		Caso "E":
			Escribir "Ingresa el lado del hex�gono"
			Leer lado
			Escribir "Ingresa el apotema del hex�gono"
			Leer apotema
			Hexagono(lado, apotema)
		Caso "F":
			Escribir "Ingresa la base mayor del trapecio"
			Leer baseMayor
			Escribir "Ingresa la base menor del trapecio"
			Leer baseMenor
			Escribir "Ingresa la altura del trapecio"
			Leer altura
			Escribir "Ingresa el lado 1 del trapecio"
			Leer lado1
			Escribir "Ingresa el lado 2 del trapecio"
			Leer lado2
			Trapecio(baseMayor, baseMenor, altura, lado1, lado2)
		De Otro Modo:
			Escribir "Opci�n no v�lida"
	FinSegun
	
FinAlgoritmo
