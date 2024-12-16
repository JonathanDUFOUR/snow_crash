#!/bin/sh

sudo useradd \
  --no-create-home \
  --no-user-group \
  --password '💀 You have been hacked! 💀' \
  --uid 3005 \
  flag05
echo -n 'flag05: '
sudo -u flag05 getflag | grep -oE '[^ ]+$'
sudo userdel flag05
