#!/bin/bash
CONFIG=/root/config/config.sh
TMP_CFG=/tmp/config.sh

if [ -f $CONFIG ]; then
   cp $CONFIG $TMP_CFG
   chmod +x $TMP_CFG
   $TMP_CFG
   rm $TMP_CFG
fi

/usr/sbin/sshd -D
