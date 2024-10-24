#crear un a funcion que se encarge de sumar dos arreglos 

def sumar_arreglo(arreglo1, arrerglo2): 
    if len(arreglo1) != len(arrerglo2): 
        print("Error: Los arreglos deven de tener la misma longitud ")
        return None 
    else: 
        suma = [] 
        for i in range(len(arreglo1)):
            suma.append(arreglo1[i]+arrerglo2[i])
        return suma 

#progrma principal 

#primero definimos los arreglos 

arreglo1 = []
arrerglo2 = []

n = int(input("introducel el tamaño de los arreglos "))

print("introdce los elementos del primer arreglo")
for i in range(n): 
    num = float(input("ingresa el elemento {i+1}:"))
    arreglo1.append(num)


print("introdce los elementos del segundo arreglo")
for i in range(n): 
    num = float(input("ingresa el elemento {i+1}:"))
    arrerglo2.append(num)

resultado = sumar_arreglo(arreglo1, arrerglo2)

if resultado is not None:
    print("la suma de loa dos arreglos es :")
   