#!/usr/bin/env bash

echo "nameserver 192.168.0.1" > /etc/resolvconf/resolv.conf.d/base
resolvconf -u
