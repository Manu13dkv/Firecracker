#!/bin/bash
#
# Desisntalación del tap device y del sistema de red
# de las máquinas virtuales.
#
# Autor: Manuel Domínguez Montero.
#
# Sistemas telemáticos avanzados 2022/2023

sudo iptables -F
sudo ip link del tap0
sudo iptables-restore < iptables.rules.old
sudo sh -c "echo 0 > /proc/sys/net/ipv4/ip_forward" # usually the default
