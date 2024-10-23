Algoritmo aldeconvercionvinaria 
	Definir num , residuo Como real 
	definir binario como texto 
	//binario lo tengo que concatenar 
	binario = ""
	
	Escribir "ingresa el numero que deseas convertir "
	leer num
	
	Si num >= 0 Entonces
		Mientras num > 0 Hacer
			residuo = num%2 
			//armar el binario
			nuevobinario <- ConvertirATexto(residuo)
			binario= nuevobinario + binario
			num = Trunc(num/2)      
		FinMientras
		//si el numero es 0 
		si binario = "0" Entonces
			binario = "0"
		FinSi
		Escribir "el numero binario es :" , binario
		
	FinSi
	
	
FinAlgoritmo
