#!/bin/bash

USER_FILE="users.txt"
LOGFILE="logs/add_users.log"
PASSWORD="Password123"


if [ ! -f "$USER_FILE" ]; then
    echo "ERROR: users.txt not found!" | tee -a "$LOGFILE"
    exit 1
fi

while read USERNAME; do
    [ -z "$USERNAME" ] && continue

    if id "$USERNAME" &>/dev/null; then
        echo "$(date): User $USERNAME already exists" | tee -a "$LOGFILE"
    else
        useradd "$USERNAME"
        echo "$USERNAME:$PASSWORD" | chpasswd
        passwd -e "$USERNAME"
        echo "$(date): Created user: $USERNAME" | tee -a "$LOGFILE"
    fi
done < "$USER_FILE"

