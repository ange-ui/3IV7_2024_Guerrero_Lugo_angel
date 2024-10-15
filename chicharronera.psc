Algoritmo chicharronera
	Definir a, b, c, discriminante, x1, x2 Como Real
    Escribir "Introduce el valor de a: "
    Leer a
    Escribir "Introduce el valor de b: "
    Leer b
    Escribir "Introduce el valor de c: "
    Leer c
	
    discriminante = b^2 - 4*a*c
	
    Si discriminante >= 0 Entonces
        x1 = (-b + raiz(discriminante)) / (2*a)
        x2 = (-b - raiz(discriminante)) / (2*a)
        Escribir "Las soluciones reales son: ", x1, " y ", x2
    Sino
        x1 = (-b / (2*a)) + (raiz(-discriminante) / (2*a)) * i
        x2 = (-b / (2*a)) - (raiz(-discriminante) / (2*a)) * i
        Escribir "Las soluciones complejas son: ", x1, " y ", x2
    FinSi
FinAlgoritmo
