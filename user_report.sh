#!/bin/bash

LOGFILE="logs/report.log"

echo "---- System User Report ----"
echo "Generated at: $(date)" | tee "$LOGFILE"

echo "Total users:" | tee -a "$LOGFILE"
wc -l /etc/passwd | tee -a "$LOGFILE"

echo "Currently logged in users:" | tee -a "$LOGFILE"
who | tee -a "$LOGFILE"

