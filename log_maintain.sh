#!/bin/bash

mkdir -p "/opt/logmanager"
mkdir -p "/opt/archive_logs"

touch -d "2 days ago" "/opt/logmanager/app_log_$(date -d '2 days ago' +%Y%m%d%H%M%S).log"
touch -d "10 days ago" "/opt/logmanager/system_log_$(date -d '10 days ago' +%Y%m%d%H%M%S).log"
touch -d "20 days ago" "/opt/logmanager/web_log_$(date -d '20 days ago' +%Y%m%d%H%M%S).log"
touch -d "35 days ago" "/opt/logmanager/db_log_$(date -d '35 days ago' +%Y%m%d%H%M%S).log"
touch -d "40 days ago" "/opt/logmanager/security_log_$(date -d '40 days ago' +%Y%m%d%H%M%S).log"

find "/opt/logmanager" -type f -name "*.log" -mtime +7 -print0 | while IFS= read -r -d $'\0' logfile; do
    filename=$(basename "$logfile")
    ARCHIVE_FILENAME="$(date +%Y%m%d%H%M%S)_${filename}.tar.gz"
    tar -czvf "/opt/archive_logs/$ARCHIVE_FILENAME" "$logfile" && rm "$logfile" 
done

find "/opt/archive_logs" -type f -name "*.tar.gz" -mtime +30 -delete

df -h | awk 'NR>1 {print $5, $1}' | while read -r usage mountpoint; do
    percentage=${usage%\%}
    if (( percentage > 80 )); then
        echo "$(date): WARNING: Partition '$mountpoint' is at ${usage} disk usage." >> "/var/tmp/log_alerts.log"
    fi
done
