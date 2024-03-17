#!/bin/bash

# Verificar si se proporcionó un argumento
if [ $# -eq 0 ]; then
    echo "Error: Debes proporcionar la opción de imagen (1 o 2) como argumento."
    exit 1
fi

# Obtener la opción de imagen del primer argumento
opcion="$1"

# Verificar la opción de imagen y establecer la ruta de la imagen correspondiente
case $opcion in
    1)
        imagen="/home/olivier/img1.jpg"
        ;;
    2)
        imagen="/home/olivier/img2.jpg"
        ;;
    *)
        echo "Error: Opción de imagen no válida. Debes elegir 1 o 2."
        exit 1
        ;;
esac

# Verificar si la imagen existe en la ruta especificada
if [ ! -f "$imagen" ]; then
    echo "Error: La imagen no existe en la ruta especificada."
    exit 1
fi

# Cambiar el fondo de pantalla utilizando gsettings
gsettings set org.gnome.desktop.background picture-uri "file://$imagen"

# Mostrar mensaje de éxito
echo "Fondo de pantalla cambiado correctamente a: $imagen"
