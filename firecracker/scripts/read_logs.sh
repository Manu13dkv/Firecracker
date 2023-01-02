#!/bin/bash
#
# Muestra los logs de Firecracker.
#
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzados 2022/2023

logs=logs.fifo

while true
do
    if read line <$logs; then
        echo $line
    fi
done

echo "Reader exiting"
