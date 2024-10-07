#!/bin/bash
#Ejer1 Guardar Variable

# Llamada a la función pasando el parámetro
GuardarNombre $1

# Verificar que se ha pasado un parámetro
if [ -z "$nombre" ]; then
    echo "Por favor, introduce un nombre como parámetro."
    exit 1
fi

#Ejer 2 Crear carpeta
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

# Ejer 3 Ganador o no
# Función que verifica si los minutos actuales son pares y escribe en ganador.txt
verificar_minutos_par_y_escribir() {
    carpeta=$1
    # Obtener los minutos actuales
    minutos_actuales=$(date +"%M")
    
    # Verificar si los minutos son pares
    if [ $((minutos_actuales % 2)) -eq 0 ]; then
        echo "Has Ganado"
        # Construir la ruta completa del archivo ganador.txt
        ruta_archivo="$carpeta/ganador.txt"
        
        # Escribir "Has Ganado" en el archivo ganador.txt
        echo "Has Ganado" > "$ruta_archivo"
    fi
}

# Llamada a la función pasando la carpeta como parámetro
verificar_minutos_par_y_escribir "/ruta/a/la/carpeta"

