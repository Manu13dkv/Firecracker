#!/bin/bash
#
# Instalación de la versión 1.6.12 de Containerd
#
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzanzados 2022/2023

# Descargamos las dependencias

# Containerd
wget https://github.com/containerd/containerd/releases/download/v1.6.12/containerd-1.6.12-linux-amd64.tar.gz
# Runc
wget https://github.com/opencontainers/runc/releases/download/v1.1.4/runc.amd64
# CNI Plugins
wget https://github.com/containernetworking/plugins/releases/download/v1.1.1/cni-plugins-linux-amd64-v1.1.1.tgz

# Descomprimimos y movemos el binario de containerd
sudo tar Cxzvf /usr/local containerd-1.6.12-linux-amd64.tar.gz

#Instalamos el runtime Runc
sudo install -m 755 runc.amd64 /usr/local/sbin/runc

#Instalamos los CNI Plugin

sudo mkdir -p /opt/cni/bin
sudo tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.1.1.tgz


# Eliminamos los ficheros descargados.
rm containerd-1.6.12-linux-amd64.tar.gz
rm runc.amd64
rm cni-plugins-linux-amd64-v1.1.1.tgz
