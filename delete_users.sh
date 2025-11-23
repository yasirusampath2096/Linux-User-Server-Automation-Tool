#!/bin/bash

LOGFILE="logs/delete_users.log"

while read USERNAME; do
    if id "$USERNAME" &>/dev/null; then
        userdel -r "$USERNAME"
        echo "$(date): Deleted user: $USERNAME" | tee -a "$LOGFILE"
    else
        echo "$(date): User $USERNAME not found" | tee -a "$LOGFILE"
    fi
done < users.txt


