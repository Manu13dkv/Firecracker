#!/bin/bash
#
# Arranque del contenedor con imagen Alpine Linux
# 
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzados

#Obtenemos la imágen del repositorio
nerdctl pull alpine

# Arrancamos el contenedor en modo interactivo.
nerdctl run -it --name alpine alpine



