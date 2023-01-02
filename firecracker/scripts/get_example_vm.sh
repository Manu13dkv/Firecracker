#!/bin/bash

# Obtención de la maquina virtual de prueba
#
# Basada en ubuntu 18
#
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzados 2022/2023


#Comprobamos la arquitectura del equipo.
arch=`uname -m`

#Obtenemos el kernel (Ubuntu 18) y el sistema de ficheros de las MV a utilizar.
dest_kernel="hello-vmlinux.bin"
dest_rootfs="hello-rootfs.ext4"
image_bucket_url="https://s3.amazonaws.com/spec.ccfc.min/img/quickstart_guide/$arch"

if [ ${arch} = "x86_64" ]; then
    kernel="${image_bucket_url}/kernels/vmlinux.bin"
    rootfs="${image_bucket_url}/rootfs/bionic.rootfs.ext4"
elif [ ${arch} = "aarch64" ]; then
    kernel="${image_bucket_url}/kernels/vmlinux.bin"
    rootfs="${image_bucket_url}/rootfs/bionic.rootfs.ext4"
else
    echo "Cannot run firecracker on $arch architecture!"
exit 1
fi

echo "Downloading $kernel..."
curl -fsSL -o $dest_kernel $kerneil

echo "Downloading $rootfs..."
curl -fsSL -o $dest_rootfs $rootfs

echo "Saved kernel file to $dest_kernel and root block device to $dest_rootfs."


