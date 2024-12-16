#!/bin/sh

sudo useradd \
  --no-create-home \
  --no-user-group \
  --password '💀 You have been hacked! 💀' \
  --uid 3007 \
  flag07
echo -n 'flag07: '
sudo -u flag07 getflag | grep -oE '[^ ]+$'
sudo userdel flag07
