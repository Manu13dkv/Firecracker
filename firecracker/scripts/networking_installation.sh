#!/bin/bash
#
# Instalación del sistema de red
#
# Se añade un puente virtual para la comunicación 
# Con las MMV 
#
# Autor: Manuel Domínguez Montero.
#
# Servicios telemáticos avanzados

# En primer lugar realizamos una copia de seguridad de las
# Reglas del cortafuegos.

sudo iptables-save > iptables.rules.old

# Configuramos el tap device.

sudo ip tuntap add dev tap0 mode tap
sudo sysctl -w net.ipv4.conf.tap0.proxy_arp=1
sudo sysctl -w net.ipv6.conf.tap0.disable_ipv6=1
sudo ip addr add 172.17.0.1/24 dev tap0
sudo ip link set tap0 up

# Añadimos las reglas al cortafuegos.
# Damos salida hacia internet por la interfaz wifi wlp3s0 de mi equipo en este caso.

sudo iptables -t nat -A POSTROUTING -o wlp3s0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i tap0 -o wlp3s0 -j ACCEPT

