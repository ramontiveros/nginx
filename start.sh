#!/bin/bash
CONFIG=/root/config/config.sh

if [ -f $CONFIG ]; then
   chmod +x $CONFIG
   $CONFIG
   rm $CONFIG
fi

/usr/sbin/sshd -D
