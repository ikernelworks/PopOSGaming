#!/bin/bash

# Mensaje de información
echo "Se van a instalar los siguientes componentes:"
echo "- Herramientas de personalizacion"
echo "- Herramientas de particionado"
echo "- Soporte completo de Control Xbox"
echo "- Soporte para particiones exFat"
echo "- Vulkan"
echo "- Reproductor de Video/Audio"
echo "- Steam"
echo "- Gamemode"
echo "==================="
echo "==================="
# Función para imprimir en verde
print_green() {
    echo -e "\e[32m$1\e[0m"
}

echo "Actualizando repositorio"
sudo apt update > /dev/null 2>&1 && print_green "Actualizacion de repositorio finalizada"
# Instalación de los componentes con mensajes de "Instalado" al finalizar
echo "Instalando Herramientas de personalizacion..."
sudo apt install -y gnome-tweaks > /dev/null 2>&1 && print_green "- Herramientas de personalizacion - Instalado"

echo "Instalando Herramientas de particionado..."
sudo apt install -y gparted > /dev/null 2>&1 && print_green "- Herramientas de particionado - Instalado"

echo "Instalando Soporte completo de Control Xbox..."
sudo apt install -y xboxdrv sysfsutils > /dev/null 2>&1 && print_green "- Soporte completo de Control Xbox - Instalado"

echo "Instalando Soporte para ExFat..."
sudo apt install -y exfat-fuse exfatprogs > /dev/null 2>&1 && print_green "- Soporte para particiones exFat - Instalado"

echo "Instalando Vulkan..."
sudo apt install -y vulkan-tools mangohud > /dev/null 2>&1 && print_green "- Vulkan - Instalado"

echo "Instalando Reproductor de Video/Audio..."
sudo apt install -y vlc > /dev/null 2>&1 && print_green "- Reproductor de Video/Audio - Instalado"

echo "Instalando Steam..."
sudo apt install -y steam > /dev/null 2>&1 && print_green "- Steam - Instalado"

echo "Instalando Gamemode..."
sudo apt install -y gamemode > /dev/null 2>&1 && print_green "- Gamemode - Instalado"
print_green "\n\nInstalacion finalizada puedes cerrar la terminal\n\n"