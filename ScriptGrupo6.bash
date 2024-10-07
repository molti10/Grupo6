#!/bin/bash
## Guardar un parámetro
GuardarNombre () {
   nombre=$1  # Sin espacios alrededor del '='
}

# Imprimir el valor de la variable
echo $nombre



import os
from datetime import datetime

def verificar_minutos_par_y_escribir(carpeta):
    # Obtener la hora actual
    minutos_actuales = datetime.now().minute

    # Verificar si los minutos actuales son pares
    if minutos_actuales % 2 == 0:
        print("Has Ganado")
        # Construir la ruta completa del archivo ganador.txt
        ruta_archivo = os.path.join(carpeta, "ganador.txt")
        
        # Escribir "Has Ganado" en el archivo ganador.txt
        with open(ruta_archivo, "w") as f:
            f.write("Has Ganado")
