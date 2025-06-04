#!/bin/bash

echo "-- Users with UID >= 1000 --"
awk -F':' '($3 >= 1000) {print $1}' /etc/passwd

echo -e "\n-- Users with sudo access --"
echo "Users with sudo group:"
getent group sudo | cut -d: -f4 | sed 's/,/\n/g'

