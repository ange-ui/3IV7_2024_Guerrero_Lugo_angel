SubProceso Rectangulo(base, altura)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir "El área del rectángulo es: ", area
	Escribir "El perímetro del rectángulo es: ", perimetro
FinSubProceso

SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	Escribir "El área del triángulo es: ", area
	Escribir "El perímetro del triángulo es: ", perimetro
FinSubProceso

SubProceso Cuadrado(lado)
	Definir area, perimetro Como Real
	area = lado * lado
	perimetro = 4 * lado
	Escribir "El área del cuadrado es: ", area
	Escribir "El perímetro del cuadrado es: ", perimetro
FinSubProceso

SubProceso Pentagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = 5 * lado
	area = (perimetro * apotema) / 2
	Escribir "El área del pentágono es: ", area
	Escribir "El perímetro del pentágono es: ", perimetro
FinSubProceso

SubProceso Hexagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = 6 * lado
	area = (perimetro * apotema) / 2
	Escribir "El área del hexágono es: ", area
	Escribir "El perímetro del hexágono es: ", perimetro
FinSubProceso

SubProceso Trapecio(baseMayor, baseMenor, altura, lado1, lado2)
	Definir area, perimetro Como Real
	area = ((baseMayor + baseMenor) * altura) / 2
	perimetro = baseMayor + baseMenor + lado1 + lado2
	Escribir "El área del trapecio es: ", area
	Escribir "El perímetro del trapecio es: ", perimetro
FinSubProceso

Algoritmo calculadoradefiguras
	Definir opcion Como Caracter
	Definir base, altura, lado1, lado2, lado3, lado, apotema, baseMayor, baseMenor Como Real
	
	// Crear el menú
	Escribir "Selecciona una opción:"
	Escribir "A: Área y perímetro del rectángulo"
	Escribir "B: Área y perímetro del triángulo"
	Escribir "C: Área y perímetro del cuadrado"
	Escribir "D: Área y perímetro del pentágono"
	Escribir "E: Área y perímetro del hexágono"
	Escribir "F: Área y perímetro del trapecio"
	
	Leer opcion
	
	Segun opcion hacer
		Caso "A":
			Escribir "Ingresa la base del rectángulo"
			Leer base
			Escribir "Ingresa la altura del rectángulo"
			Leer altura
			Rectangulo(base, altura)
		Caso "B":
			Escribir "Ingresa la base del triángulo"
			Leer base
			Escribir "Ingresa la altura del triángulo"
			Leer altura
			Escribir "Ingresa el lado 1 del triángulo"
			Leer lado1
			Escribir "Ingresa el lado 2 del triángulo"
			Leer lado2
			Escribir "Ingresa el lado 3 del triángulo"
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
		Caso "C":
			Escribir "Ingresa el lado del cuadrado"
			Leer lado
			Cuadrado(lado)
		Caso "D":
			Escribir "Ingresa el lado del pentágono"
			Leer lado
			Escribir "Ingresa el apotema del pentágono"
			Leer apotema
			Pentagono(lado, apotema)
		Caso "E":
			Escribir "Ingresa el lado del hexágono"
			Leer lado
			Escribir "Ingresa el apotema del hexágono"
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
			Escribir "Opción no válida"
	FinSegun
	
FinAlgoritmo
