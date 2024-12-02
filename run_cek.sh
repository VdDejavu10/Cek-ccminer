#!/bin/bash
SERVICE="ccminer"
DATE=$(date '+%d/%m/%Y %H:%M:%S')
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$DATE $SERVICE is running" >> run_cek.log
else
    echo "$DATE $SERVICE stopped" >> run_cek.log
    bash /root/ccminer/run > /root/ccminer/miner.log 2>&1
fi
