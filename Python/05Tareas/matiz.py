def crear_matriz_3x3():
    matriz = []
    print("Ingrese los valores para una matriz de 3x3:")
    for i in range(3):
        fila = []
        for j in range(3):
            valor = int(input(f"Elemento [{i+1}][{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def imprimir_matriz(matriz):
    for fila in matriz:
        print(" ".join(map(str, fila)))

def transponer_matriz(matriz):
    return [[matriz[j][i] for j in range(len(matriz))] for i in range(len(matriz[0]))]


matriz = crear_matriz_3x3()
print("\nMatriz original:")
imprimir_matriz(matriz)


transpuesta = transponer_matriz(matriz)
print("\nMatriz transpuesta:")
imprimir_matriz(transpuesta)
