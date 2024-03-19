#!/bin/bash

# Ruta de las imágenes
imagen1="/home/olivier/imagen1.jpg"
imagen2="/home/olivier/imagen2.jpg"

# Función para cambiar el fondo de pantalla
cambiar_fondo() {
    if [ "$1" = "$imagen1" ]; then
        gsettings set org.gnome.desktop.background picture-uri "file://$imagen1"
    else
        gsettings set org.gnome.desktop.background picture-uri "file://$imagen2"
    fi
}

# Cambiar el fondo de pantalla alternativamente cada minuto
while true; do
    cambiar_fondo "$imagen1"
    sleep 30
    cambiar_fondo "$imagen2"
    sleep 30
done



comando crontab -e
* * * * * /home/olivier/fondoauto.sh >/dev/null 2>&1

