def binario_a_decimal(binario):
    decimal = int(binario, 2)
    return decimal

def decimal_a_binario(decimal):
    binario = bin(decimal)[2:]  
    return binario

# Menú de opciones
def conversor():
    print("Selecciona una opción:")
    print("1. Convertir de binario a decimal")
    print("2. Convertir de decimal a binario")
    
    opcion = input("Elige 1 o 2: ")

    if opcion == "1":
        binario = input("Introduce el número binario: ")
        print(f"El número binario {binario} en decimal es: {binario_a_decimal(binario)}")
    elif opcion == "2":
        decimal = int(input("Introduce el número decimal: "))
        print(f"El número decimal {decimal} en binario es: {decimal_a_binario(decimal)}")
    else:
        print("Opción no válida. Por favor, elige 1 o 2.")

# Ejecutar el conversor
conversor()
