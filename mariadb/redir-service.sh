#!/bin/bash

DEFAULT_IP=`/sbin/ip route get 1 | awk '{print $NF;exit}'`

echo "Redirecting from $DEFAULT_IP:3306 to /var/run/mysqld/mysqld.sock ..."
exec socat TCP4-LISTEN:3306,fork,bind=$DEFAULT_IP UNIX-CONNECT:/var/run/mysqld/mysqld.sock

#echo "Reverse shell on port 2514"
#(socat TCP-LISTEN:,reuseaddr,fork EXEC:bash) &
# socat - TCP:localhost:1337
# https://blog.stalkr.net/2015/12/from-remote-shell-to-remote-terminal.html