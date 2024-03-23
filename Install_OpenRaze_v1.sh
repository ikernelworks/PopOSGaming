#!/bin/bash
#Funcion para poder imprimir texto en verde
print_green() {
    echo -e "\e[32m$1\e[0m"
}

# Función para preguntar y reiniciar el equipo
ask_and_reboot() {
    read -p "¿Deseas reiniciar ahora el equipo? (s/n): " response

    case "$response" in
        [Ss]*)
            echo "Reiniciando el equipo..."
            sudo reboot
            ;;
        [Nn]*)
            echo "Se pospone el reinicio."
            ;;
        *)
            echo "Respuesta inválida."
            ask_and_reboot
            ;;
    esac
}

#Mensaje sobre lo que realizara el script
echo "Se realizaran las siguientes acciones:"
echo "- Instalacion y configuracion de OpenRazer"
echo "- Instalacion de polychromatic"

#Codigo para instalar OpenRazer
echo "Aplicando prerequisitos para OpenRazer"
sudo gpasswd -a $USER plugdev && sudo add-apt-repository ppa:polychromatic/stable && echo "Presiona [ENTER] Para agregar el repositorio" && sudo apt update && print_green "Configuracion aplicada"

#Instalacion de OpenRazer
echo "Instalando OpenRazer"
sudo apt install -y openrazer-meta && print_green "Instalacion de OpenRazer - Completada"

#Codigo para instalar Polychromatic
sudo apt install -y polychromatic

#Codigo para reiniciar el equipo y se aplique correctamente todo lo instalado
ask_and_reboot

