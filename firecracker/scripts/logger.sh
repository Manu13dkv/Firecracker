#!/bin/bash
#
# Autor: Manuel Domínguez Montero
#
#
# Create the required named pipe:
mkfifo logs.fifo

# The logger also works with usual files:
#touch logs.file

curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT 'http://localhost/logger' \
    -H 'accept: application/json' \
    -H 'Content-Type: application/json' \
    -d "{
             \"log_path\": \"logs.fifo\",
             \"level\": \"Warning\",
             \"show_level\": false,
             \"show_log_origin\": false
    }"

