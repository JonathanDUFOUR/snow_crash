#!/bin/sh

for i in $(printf '%.2u\n' $(seq 0 14)); do
	sudo useradd \
	--no-create-home \
	--no-user-group \
	--password '💀 You have been hacked! 💀' \
	--uid 30$i \
	flag$i
	echo -n "flag$i: "
	sudo -u flag$i getflag | grep -oE '[^ ]+$'
	sudo userdel flag$i
done
