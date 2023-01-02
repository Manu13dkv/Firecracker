#!/bin/bash

# Instalación de firecracker
# 
# Autor: Manuel Domínguez Montero.
#
# Servicios Telemáticos Avanzandos 2022/2023
#

# Descargamos el binario de Firecracker y descomprimimos.
release_url="https://github.com/firecracker-microvm/firecracker/releases"
latest=$(basename $(curl -fsSLI -o /dev/null -w  %{url_effective} ${release_url}/latest))

arch=`uname -m`
curl -L ${release_url}/download/${latest}/firecracker-${latest}-${arch}.tgz | tar -xz

# Renombramos el binario y lo situamos en el directorio de los ejecutables.
mv release-${latest}-$(uname -m)/firecracker-${latest}-$(uname -m) ../binaries/firecracker

#Borramos el directorio descargado.
rm -rf release-${latest}-$(uname -m)



