#!/bin/bash
## Guardar un parámetro
GuardarNombre () {
   nombre=$1  # Sin espacios alrededor del '='
}

# Imprimir el valor de la variable
echo $nombre



from datetime import datetime
import os

def verificar_minutos_par():
    if datetime.now().minute % 2 == 0:
        print("Has Ganado")
        os.makedirs("ganador", exist_ok=True)
        with open("ganador/ganador.txt", "w") as f:
            f.write("Has Ganado")

verificar_minutos_par()
