#!/bin/bash

echo "-- Users with UID >= 1000 --"
awk -F':' '($3 >= 1000) {print $1}' /etc/passwd
