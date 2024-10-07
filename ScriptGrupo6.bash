#!/bin/bash



# Llamada a la función pasando el parámetro
GuardarNombre $1

# Verificar que se ha pasado un parámetro
if [ -z "$nombre" ]; then
    echo "Por favor, introduce un nombre como parámetro."
    exit 1
fi

# Crear la carpeta con el nombre
mkdir "$nombre"

# Cambiar al directorio creado
cd "$nombre"

# Crear el archivo nombre.txt dentro de la carpeta
touch nombre.txt

# Obtener la fecha y hora actual
fecha=$(date +"%Y-%m-%d %H:%M")

# Escribir la fecha de creación en nombre.txt
echo "Fichero creado el: $fecha" > nombre.txt

# Mostrar un mensaje de éxito
echo "La carpeta '$nombre' y el archivo 'nombre.txt' han sido creados con éxito."
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
