#!/bin/bash

DEFAULT_IP=`/sbin/ip route get 1 | awk '{print $NF;exit}'`

echo "Redirecting from $DEFAULT_IP:3306 to /var/run/mysqld/mysqld.sock ..."
(socat TCP4-LISTEN:3306,fork,bind=$DEFAULT_IP UNIX-CONNECT:/var/run/mysqld/mysqld.sock) &
