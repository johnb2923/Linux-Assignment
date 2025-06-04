#!/bin/bash

HEALTH_LOG="/var/log/health_check.log"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "--- Health Check Report - $TIMESTAMP ---" | tee -a "$HEALTH_LOG"
echo "-------------------------------------" | tee -a "$HEALTH_LOG"

echo "Load Average:" | tee -a "$HEALTH_LOG"
uptime | awk -F'load average:' '{print $2}' | tee -a "$HEALTH_LOG"

echo "Memory Availability:" | tee -a "$HEALTH_LOG"
free -h | grep -E 'Mem:|Swap:' | tee -a "$HEALTH_LOG" 

echo "SSH Service Status (Sim):" | tee -a "$HEALTH_LOG"
echo "SSH is running (sim)." | tee -a "$HEALTH_LOG"
