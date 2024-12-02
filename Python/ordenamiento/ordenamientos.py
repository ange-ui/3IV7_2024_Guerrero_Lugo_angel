import tkinter as tk
from tkinter import messagebox
import time

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = key
    return lista

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n - i - 1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

def seleccion(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if lista[j] < lista[min_idx]:
                min_idx = j
        lista[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista

def ordenar_lista():
    entrada = entry.get()
    metodo = metodo_var.get()

    if not entrada:
        messagebox.showerror("Error", "Por favor ingresa una lista de números.")
        return

    try:
        lista_original = [int(x) for x in entrada.split(",")]
    except ValueError:
        messagebox.showerror("Error", "Asegúrate de ingresar números separados por comas.")
        return

    if len(lista_original) > 40:
        messagebox.showerror("Error", "La lista no debe contener más de 40 números.")
        return

    lista = lista_original.copy()

    start_time = time.time()

    if metodo == "Inserción":
        lista_ordenada = insercion(lista)
    elif metodo == "Burbuja":
        lista_ordenada = burbuja(lista)
    elif metodo == "Selección":
        lista_ordenada = seleccion(lista)
    else:
        messagebox.showerror("Error", "Selecciona un método de ordenamiento.")
        return

    end_time = time.time()
    tiempo = end_time - start_time

    resultado = f"""
    Lista original: {lista_original}
    Lista ordenada: {lista_ordenada}
    Tiempo de ejecución: {tiempo:.6f} segundos
    """
    resultado_label.config(text=resultado)

root = tk.Tk()
root.title("Métodos de Ordenamiento")
root.geometry("600x400")

tk.Label(root, text="Ingrese una lista de números separados por comas:", font=("Arial", 12)).pack(pady=10)
entry = tk.Entry(root, width=50)
entry.pack()

tk.Label(root, text="Seleccione el método de ordenamiento:", font=("Arial", 12)).pack(pady=10)
metodo_var = tk.StringVar()
tk.Radiobutton(root, text="Inserción", variable=metodo_var, value="Inserción").pack()
tk.Radiobutton(root, text="Burbuja", variable=metodo_var, value="Burbuja").pack()
tk.Radiobutton(root, text="Selección", variable=metodo_var, value="Selección").pack()

tk.Button(root, text="Ordenar", command=ordenar_lista).pack(pady=20)

resultado_label = tk.Label(root, text="", font=("Arial", 12), justify="left")
resultado_label.pack(pady=10)

root.mainloop()
