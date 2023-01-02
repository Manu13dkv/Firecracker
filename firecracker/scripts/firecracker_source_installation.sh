#!/bin/bash
#
# Instalación de Firecracker a partir del código fuente.
#
# Autor: Manuel Domínguez Montero.
#
# Servicios Telemáticos avanzados 2022/2023.

# Clonamos el repositorio para obtener los ficheros fuente.
git clone https://github.com/firecracker-microvm/firecracker

# Compilamos con musl dentro del directorio creado.
firecracker/tools/devtool build

# El binario de Firecracker aparecerá en: 
#
# /home/dit/proyecto_sta_mandommon/firecracker/scripts/firecracker/build/cargo_target/x86_64-unknown-linux-musl/debug 
#
# Lo movemos a nuestro directorio binaries.

mv firecracker/build/cargo_target/x86_64-unknown-linux-musl/debug/firecracker ../binaries/firecracker

# Eliminamos el repositorio clonado y ficheros intermedios.

rm -rf firecracker




