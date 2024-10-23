Algoritmo numpositivosynegativos
	Definir n, contadorPositivos, contadorNegativos Como Entero
    Definir numero Como Real
    contadorPositivos = 0
    contadorNegativos = 0
	
    Escribir "¿Cuántos números deseas introducir?"
    Leer n
	
    Para i = 1 Hasta n Con Paso 1 Hacer
        Escribir "Introduce un número: "
        Leer numero
        Si numero > 0 Entonces
            contadorPositivos = contadorPositivos + 1
        Sino
            contadorNegativos = contadorNegativos + 1
        FinSi
    FinPara
	
    Escribir "Números positivos: ", contadorPositivos
    Escribir "Números negativos: ", contadorNegativos
FinAlgoritmo
