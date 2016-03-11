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

echo "auto eth0" >> /etc/network/interfaces
echo "iface eth0 inet static" >> /etc/network/interfaces
echo "address $IP" >> /etc/network/interfaces
echo "netmask 255.255.255.0" >> /etc/network/interfaces
echo "gateway 192.168.0.1" >> /etc/network/interfaces
ifup -a
