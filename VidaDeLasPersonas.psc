Algoritmo VidaDeLasPersonas
    Definir N, Q, i, j, a, b, z Como Entero
    Definir personas Como Entero
    Definir nacimientos, fallecimientos Como Entero
    Definir vivos, masJoven, masAnciano Como Entero
    Definir totalPersonas, totalPreguntas Como Entero
	
    Escribir "Ingrese la cantidad de personas (N) y la cantidad de preguntas (Q):"
    Leer N, Q
	
    Dimension nacimientos[N]
    Dimension fallecimientos[N]
    Dimension preguntas[Q]
	
    Para i <- 1 Hasta N Hacer
        Escribir "Ingrese el año de nacimiento y fallecimiento de la persona ", i, ":"
        Leer a, b
        nacimientos[i] <- a
        fallecimientos[i] <- b
    FinPara
	
    Para j <- 1 Hasta Q Hacer
        Escribir "Ingrese el año de la pregunta ", j, ":"
        Leer z
        preguntas[j] <- z
    FinPara
	
    Para j <- 1 Hasta Q Hacer
        z <- preguntas[j]
        vivos <- 0
        masJoven <- 9999
        masAnciano <- 0
		
        Para i <- 1 Hasta N Hacer
            Si nacimientos[i] <= z Y fallecimientos[i] >= z Entonces
                vivos <- vivos + 1
                Si (z - nacimientos[i]) < masJoven Entonces
                    masJoven <- z - nacimientos[i]
                FinSi
                Si (z - nacimientos[i]) > masAnciano Entonces
                    masAnciano <- z - nacimientos[i]
                FinSi
            FinSi
        FinPara
		
        Escribir "En el año ", z, " había ", vivos, " personas vivas."
        Escribir "La persona viva más joven tenía ", masJoven, " años."
        Escribir "La persona viva más anciana tenía ", masAnciano, " años."
    FinPara
FinAlgoritmo
