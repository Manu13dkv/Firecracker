#!/bin/bash
#
# Instalación y arranque del demonio docker 
#
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzados 2022/2023

#Actualizamos los paquetes e instalamos docker
sudo apt-get update
sudo apt-get install docker.io

# Arrancamos el demonio a través de systemd
sudo systemctl start docker

# Anadimos nuestro usuario al grupo Docker.
sudo usermod -aG docker $USER
