#!/bin/bash

apt update && apt upgrade -y
apt install -y curl wget tree htop git net-tools

for user in "${USERS[@]}"; do
    useradd -m "$user"
    echo "$user:$DEFAULT_PASSWORD" | chpasswd
    chage -d 0 "$user"
done
