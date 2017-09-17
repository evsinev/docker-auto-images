#!/bin/bash

DEFAULT_IP=`/sbin/ip route get 1 | awk '{print $NF;exit}'`

echo "Redirecting from $DEFAULT_IP:3306 to 127.0.0.1:3306 ..."
(socat TCP4-LISTEN:3306,fork,bind=$DEFAULT_IP TCP4:127.0.0.1:3306) &
