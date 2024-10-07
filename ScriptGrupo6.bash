#!/bin/bash

# Función para guardar un parámetro en la variable nombre
GuardarNombre () {
   nombre=$1  # Asigna el primer argumento a la variable 'nombre'
}

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
