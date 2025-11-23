#!/bin/bash

LOGFILE="logs/lock_users.log"

while read USERNAME; do
    if id "$USERNAME" &>/dev/null; then
        passwd -l "$USERNAME"
        echo "$(date): Locked user: $USERNAME" | tee -a "$LOGFILE"
    else
        echo "$(date): User $USERNAME not found" | tee -a "$LOGFILE"
    fi
done < users.txt

