#!/bin/bash

echo "-- Users with UID >= 1000 --"
awk -F':' '($3 >= 1000) {print $1}' /etc/passwd

echo -e "\n-- Users with sudo access --"
echo "Users with sudo group:"
getent group sudo | cut -d: -f4 | sed 's/,/\n/g'

echo -e "\n-- Users logged in within the last 24 hours --"
if command -v last &> /dev/null; then
    last -s "$(date -d '24 hours ago' +%Y-%m-%d %H:%M:%S)" | awk '{print $1}' | sort -u | grep -v 'wtmp' | grep -v 'reboot' | grep -v '^$'
else
    echo "No users logged in."
fi
