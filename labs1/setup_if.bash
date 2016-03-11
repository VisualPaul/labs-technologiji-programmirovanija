#!/bin/bash

if [ $HOSTNAME = u1 ]; then
  IP=192.168.0.10
elif [ $HOSTNAME = u2 ] ; then
  IP=192.168.0.20
elif [ $HOSTNAME = u3 ] ; then
  IP=192.168.0.30
else
  echo "UNKNOWN HOST!!!"
  exit 1
fi

echo "configuring with ip: $IP"
ifconfig eth0 $IP
ifconfig eth0 netmask 255.255.255.0
ifconfig eth0 up
route add default gw 192.168.0.1
