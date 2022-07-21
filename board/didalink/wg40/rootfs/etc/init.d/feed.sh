#!/bin/sh

echo 0 > /sys/class/gpio/gpio197/value
while true
do
	echo 1 > /sys/class/gpio/gpio197/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio197/value
	sleep 1
done

