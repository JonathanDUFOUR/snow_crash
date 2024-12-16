#!/bin/sh

sudo useradd \
  --no-create-home \
  --no-user-group \
  --password '💀 You have been hacked! 💀' \
  --uid 3004 \
  flag04
echo -n 'flag04: '
sudo -u flag04 getflag | grep -oE '[^ ]+$'
sudo userdel flag04
