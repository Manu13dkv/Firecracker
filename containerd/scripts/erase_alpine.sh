#!/bin/bash
#
# Parada y eliminación del contenedor Alpine
#
# Autor Manuel Domínguez montero
#
# Servicios Telemáticos avanzados 2022/2023

#Debemos haber nombrado el contenedor
nerdctl stop alpine
nerdctl rm alpine
