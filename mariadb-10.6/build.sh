#!/bin/bash -eux

wget https://github.com/evsinev/network-proxy/releases/download/1.0-1/network-proxy-server-linux-x86_64 -O network-proxy-server
#cp /home/graal/src/build-network-proxy/network-proxy-server-1.0-SNAPSHOT ./network-proxy-server

docker build -t payneteasy/mariadb:10.6.18-2 .
