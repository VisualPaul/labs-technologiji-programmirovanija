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
ip addr add $IP/24 dev eth0
ip link set eth0 up
ip route add default via 192.168.0.1

