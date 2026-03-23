#!/bin/bash

LOG="/tmp/monitor.log"

# Disk check
DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ $DISK -gt 80 ]; then
    echo "High Disk Usage: $DISK%" >> $LOG
fi

# Service check
if ! systemctl is-active --quiet nginx; then
    echo "Nginx is DOWN, restarting..." >> $LOG
    systemctl start nginx
fi

# App check
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
if [ $STATUS -ne 200 ]; then
    echo "Application DOWN" >> $LOG
fi