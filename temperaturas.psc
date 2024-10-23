Algoritmo temperaturas
	Definir fahrenheit, celsius, kelvin, rankine, opcion Como Real
    Escribir "Introduce la temperatura en grados Fahrenheit: "
    Leer fahrenheit
	
    Escribir "¿Qué conversión deseas realizar?"
    Escribir "1. Celsius"
    Escribir "2. Kelvin"
    Escribir "3. Rankine"
    Leer opcion
	
    Segun opcion Hacer
        Caso 1:
            celsius = (fahrenheit - 32) * 5 / 9
            Escribir fahrenheit, "°F equivalen a ", celsius, "°C."
        Caso 2:
            kelvin = (fahrenheit - 32) * 5 / 9 + 273.15
            Escribir fahrenheit, "°F equivalen a ", kelvin, "K."
        Caso 3:
            rankine = fahrenheit + 459.67
            Escribir fahrenheit, "°F equivalen a ", rankine, "°R."
        De Otro Modo:
            Escribir "Opción no válida."
    FinSegun
FinAlgoritmo
