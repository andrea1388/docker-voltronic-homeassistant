#!/bin/bash
export TERM=xterm


i=0
while :
do
  if [ $i -eq 0 ]
  then
    echo "init"
    /opt/inverter-mqtt/mqtt-init.sh
  fi
  i=$((i+1))
  if [ $i -eq 10 ]
  then
    i=0
  fi
  echo "push"
  /opt/inverter-mqtt/mqtt-push.sh > /dev/null 2>&1
  sleep 30
done


