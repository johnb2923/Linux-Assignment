#!/bin/bash

mkdir -p "/opt/logmanager"
mkdir -p "/opt/archive_logs"

touch -d "2 days ago" "/opt/logmanager/app_log_$(date -d '2 days ago' +%Y%m%d%H%M%S).log"
touch -d "10 days ago" "/opt/logmanager/system_log_$(date -d '10 days ago' +%Y%m%d%H%M%S).log"
touch -d "20 days ago" "/opt/logmanager/web_log_$(date -d '20 days ago' +%Y%m%d%H%M%S).log"
touch -d "35 days ago" "/opt/logmanager/db_log_$(date -d '35 days ago' +%Y%m%d%H%M%S).log"
touch -d "40 days ago" "/opt/logmanager/security_log_$(date -d '40 days ago' +%Y%m%d%H%M%S).log"

