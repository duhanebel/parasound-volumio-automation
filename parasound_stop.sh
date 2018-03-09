#!/bin/bash
echo $$ > /var/run/parasound/turn_off.pid
sleep 300

echo "Dstop" > /dev/ttyUSB0

rm /var/run/parasound/turn_off.pid
