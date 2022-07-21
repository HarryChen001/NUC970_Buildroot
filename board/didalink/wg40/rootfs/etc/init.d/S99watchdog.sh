#!/bin/sh

echo 196 > /sys/class/gpio/export
echo 197 > /sys/class/gpio/export 

echo out > /sys/class/gpio/gpio197/direction

/etc/init.d/feed.sh &

echo out > /sys/class/gpio/gpio196/direction
