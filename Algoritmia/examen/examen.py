import tkinter as tk
from tkinter import messagebox, simpledialog


panditas = [
    {"tipo": "Osito", "color": "Rojo", "sabor": "Fresa", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.5},
    {"tipo": "Osito", "color": "Verde", "sabor": "Limón", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.0},
    {"tipo": "Osito", "color": "Amarillo", "sabor": "Piña", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.3},
    {"tipo": "Osito", "color": "Naranja", "sabor": "Naranja", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.1},
    {"tipo": "Osito", "color": "Azul", "sabor": "Arándano", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.2},
    {"tipo": "Osito", "color": "Morado", "sabor": "Uva", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 3.9},
    {"tipo": "Osito", "color": "Blanco", "sabor": "Coco", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 3.8},
    {"tipo": "Osito", "color": "Rosa", "sabor": "Frambuesa", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.4},
    {"tipo": "Osito", "color": "Café", "sabor": "Chocolate", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "Sí", "calificacion": 4.6},
    {"tipo": "Osito", "color": "Negro", "sabor": "Regaliz", "tamaño": "Pequeño", "textura": "Suave", "precio": 1.5, "disponibilidad": "No", "calificacion": 3.5},
    {"tipo": "Osito", "color": "Dorado", "sabor": "Caramelo", "tamaño": "Pequeño", "textura": "Suave", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.8},
    {"tipo": "Gatito", "color": "Rojo", "sabor": "Fresa", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.0},
    {"tipo": "Gatito", "color": "Verde", "sabor": "Limón", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.1},
    {"tipo": "Gatito", "color": "Amarillo", "sabor": "Piña", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.3},
    {"tipo": "Gatito", "color": "Naranja", "sabor": "Naranja", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.0},
    {"tipo": "Gatito", "color": "Azul", "sabor": "Arándano", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 3.9},
    {"tipo": "Gatito", "color": "Morado", "sabor": "Uva", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.2},
    {"tipo": "Gatito", "color": "Blanco", "sabor": "Coco", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.1},
    {"tipo": "Gatito", "color": "Rosa", "sabor": "Frambuesa", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.3},
    {"tipo": "Gatito", "color": "Café", "sabor": "Chocolate", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "Sí", "calificacion": 4.5},
    {"tipo": "Gatito", "color": "Negro", "sabor": "Regaliz", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.0, "disponibilidad": "No", "calificacion": 3.8},
    {"tipo": "Gatito", "color": "Dorado", "sabor": "Caramelo", "tamaño": "Mediano", "textura": "Grueso", "precio": 2.5, "disponibilidad": "Sí", "calificacion": 4.7},
    {"tipo": "Elefante", "color": "Rojo", "sabor": "Fresa", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.5},
    {"tipo": "Elefante", "color": "Verde", "sabor": "Limón", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.3},
    {"tipo": "Elefante", "color": "Amarillo", "sabor": "Piña", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.2},
    {"tipo": "Elefante", "color": "Naranja", "sabor": "Naranja", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.4},
    {"tipo": "Elefante", "color": "Azul", "sabor": "Arándano", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.0},
    {"tipo": "Elefante", "color": "Morado", "sabor": "Uva", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.1},
    {"tipo": "Elefante", "color": "Blanco", "sabor": "Coco", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.2},
    {"tipo": "Elefante", "color": "Rosa", "sabor": "Frambuesa", "tamaño": "Grande", "textura": "Duro", "precio": 3.0, "disponibilidad": "Sí", "calificacion": 4.3},
]



def registrar_pandita():
    tipo = simpledialog.askstring("Entrada", "Ingresa el tipo de pandita:")
    color = simpledialog.askstring("Entrada", "Ingresa el color del pandita:")
    sabor = simpledialog.askstring("Entrada", "Ingresa el sabor del pandita:")
    tamaño = simpledialog.askstring("Entrada", "Ingresa el tamaño del pandita:")
    textura = simpledialog.askstring("Entrada", "Ingresa la textura del pandita:")
    precio = float(simpledialog.askstring("Entrada", "Ingresa el precio del pandita:"))
    disponibilidad = simpledialog.askstring("Entrada", "¿Está disponible el pandita? (Sí/No):")
    calificacion = float(simpledialog.askstring("Entrada", "Ingresa la calificación del pandita (1-5):"))

    pandita = {
        "tipo": tipo,
        "color": color,
        "sabor": sabor,
        "tamaño": tamaño,
        "textura": textura,
        "precio": precio,
        "disponibilidad": disponibilidad,
        "calificacion": calificacion
    }

    panditas.append(pandita)
    messagebox.showinfo("Éxito", "Pandita registrado exitosamente")

def consultar_panditas():
    ventana = tk.Toplevel()
    ventana.title("Lista de Panditas")

    headers = ["Tipo", "Color", "Sabor", "Tamaño", "Textura", "Precio", "Disponibilidad", "Calificación"]
    for col, header in enumerate(headers):
        tk.Label(ventana, text=header, borderwidth=2, relief="solid").grid(row=0, column=col)

    for i, pandita in enumerate(panditas, start=1):
        tk.Label(ventana, text=pandita["tipo"], borderwidth=2, relief="solid").grid(row=i, column=0)
        tk.Label(ventana, text=pandita["color"], borderwidth=2, relief="solid").grid(row=i, column=1)
        tk.Label(ventana, text=pandita["sabor"], borderwidth=2, relief="solid").grid(row=i, column=2)
        tk.Label(ventana, text=pandita["tamaño"], borderwidth=2, relief="solid").grid(row=i, column=3)
        tk.Label(ventana, text=pandita["textura"], borderwidth=2, relief="solid").grid(row=i, column=4)
        tk.Label(ventana, text=pandita["precio"], borderwidth=2, relief="solid").grid(row=i, column=5)
        tk.Label(ventana, text=pandita["disponibilidad"], borderwidth=2, relief="solid").grid(row=i, column=6)
        tk.Label(ventana, text=pandita["calificacion"], borderwidth=2, relief="solid").grid(row=i, column=7)


def editar_pandita():
    indices = [f"{i+1}: {pandita['tipo']} ({pandita['color']})" for i, pandita in enumerate(panditas)]
    pandita_index = simpledialog.askstring("Entrada", f"Selecciona un pandita para editar:\n" + "\n".join(indices))

    if pandita_index:
        try:
            index = int(pandita_index) - 1
            if 0 <= index < len(panditas):
                pandita = panditas[index]
                pandita['tipo'] = simpledialog.askstring("Entrada", f"Nuevo tipo (actual: {pandita['tipo']}):") or pandita['tipo']
                pandita['color'] = simpledialog.askstring("Entrada", f"Nuevo color (actual: {pandita['color']}):") or pandita['color']
                pandita['sabor'] = simpledialog.askstring("Entrada", f"Nuevo sabor (actual: {pandita['sabor']}):") or pandita['sabor']
                pandita['tamaño'] = simpledialog.askstring("Entrada", f"Nuevo tamaño (actual: {pandita['tamaño']}):") or pandita['tamaño']
                pandita['textura'] = simpledialog.askstring("Entrada", f"Nuevo textura (actual: {pandita['textura']}):") or pandita['textura']
                pandita['precio'] = float(simpledialog.askstring("Entrada", f"Nuevo precio (actual: {pandita['precio']}):") or pandita['precio'])
                pandita['disponibilidad'] = simpledialog.askstring("Entrada", f"Nuevo disponibilidad (actual: {pandita['disponibilidad']}):") or pandita['disponibilidad']
                pandita['calificacion'] = float(simpledialog.askstring("Entrada", f"Nuevo calificación (actual: {pandita['calificacion']}):") or pandita['calificacion'])

                messagebox.showinfo("Éxito", "Pandita editado exitosamente")
            else:
                messagebox.showerror("Error", "Índice fuera de rango.")
        except ValueError:
            messagebox.showerror("Error", "Por favor ingresa un número válido.")
def eliminar_pandita():
    indices = [f"{i+1}: {pandita['tipo']} ({pandita['color']})" for i, pandita in enumerate(panditas)]
    pandita_index = simpledialog.askstring("Entrada", f"Selecciona un pandita para eliminar:\n" + "\n".join(indices))

    if pandita_index:
        try:
            index = int(pandita_index) - 1
            if 0 <= index < len(panditas):
                panditas.pop(index)
                messagebox.showinfo("Éxito", "Pandita eliminado exitosamente")
            else:
                messagebox.showerror("Error", "Índice fuera de rango.")
        except ValueError:
            messagebox.showerror("Error", "Por favor ingresa un número válido.")

def main():
    root = tk.Tk()
    root.title("Gestión de Panditas")

    tk.Label(root, text="Menú de Gestión de Panditas", font=("Arial", 16)).pack(pady=10)

    tk.Button(root, text="Registrar Pandita", command=registrar_pandita, width=20, height=2).pack(pady=5)
    tk.Button(root, text="Consultar Panditas", command=consultar_panditas, width=20, height=2).pack(pady=5)
    tk.Button(root, text="Editar Pandita", command=editar_pandita, width=20, height=2).pack(pady=5)
    tk.Button(root, text="Eliminar Pandita", command=eliminar_pandita, width=20, height=2).pack(pady=5)

    tk.Button(root, text="Salir", command=root.quit, width=20, height=2).pack(pady=10)

    root.mainloop()

main()
