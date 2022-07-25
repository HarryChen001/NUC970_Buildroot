#!/bin/bash

usb="lsusb -d 0416:5963"

echo $usb

while true
do
	if $usb ;then
		echo "usb"
		break
	else
		echo -n "..."
		sleep 1
	fi
done
