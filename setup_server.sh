#!/bin/bash

LOGFILE="logs/server_setup.log"

apt update && apt install -y apache2

systemctl enable apache2
systemctl start apache2

echo "$(date): Apache web server installed and started" | tee -a "$LOGFILE"

