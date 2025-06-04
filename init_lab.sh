#!/bin/bash

apt update && apt upgrade -y
apt install -y curl wget tree htop git net-tools

if ! getent group engineering > /dev/null; then
    groupadd engineering
fi

for user in "${USERS[@]}"; do
    useradd -m -g engineering "$user"
    echo "$user:$DEFAULT_PASSWORD" | chpasswd
    chage -d 0 "$user"
done
