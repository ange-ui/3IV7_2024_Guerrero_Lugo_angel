Algoritmo ConversionPies
    Definir pies, pulgadas, yardas, cm, metros, opcion Como Real
    Escribir "Introduce la medida en pies: "
    Leer pies
	
    Escribir "�Qu� conversi�n deseas realizar?"
    Escribir "1. Pulgadas"
    Escribir "2. Yardas"
    Escribir "3. Cent�metros"
    Escribir "4. Metros"
    Leer opcion
	
    Segun opcion Hacer
        Caso 1:
            pulgadas = pies * 12
            Escribir pies, " pies equivalen a ", pulgadas, " pulgadas."
        Caso 2:
            yardas = pies / 3
            Escribir pies, " pies equivalen a ", yardas, " yardas."
        Caso 3:
            cm = pies * 12 * 2.54
            Escribir pies, " pies equivalen a ", cm, " cent�metros."
        Caso 4:
            metros = pies * 12 * 2.54 / 100
            Escribir pies, " pies equivalen a ", metros, " metros."
        De Otro Modo:
            Escribir "Opci�n no v�lida."
    FinSegun
FinAlgoritmo

