#!/bin/bash
IP=$1
if ! pgrep -x sshfs; then mkdir -p /Users/nic; sshfs nic@${IP}:/Users/nic /Users/nic -o compression=no -o Ciphers=chacha20-poly1305@openssh.com -o IdentityFile=/root/.ssh/macbook -o nonempty -o reconnect; fi

