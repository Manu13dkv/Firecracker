#!/bin/bash
# 
# Arranque del intérprete Nerdctl
#
# Autor: Manuel Domínguez Montero
#
# Servicios telemáticos avanzados 2022/2023

# Después de su ejecución es necesario abrir otra terminal.

sudo echo -n ; sudo containerd &
sudo chgrp "$(id -gn)" /run/containerd/containerd.sock
