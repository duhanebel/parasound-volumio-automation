#!/bin/bash
if [ -f /var/run/parasound/turn_off.pid ]; then
  kill -9 `cat /var/run/parasound/turn_off.pid`
  rm /var/run/parasound/turn_off.pid
fi
echo "Dstart" > /dev/ttyUSB0
