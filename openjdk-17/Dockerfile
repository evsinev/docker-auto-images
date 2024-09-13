FROM maven:3.8.5-openjdk-17-slim

# Disable interactive mode
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -qq install -y gettext openssh-client wget curl redir git xsltproc rsync gnupg lsb-release default-mysql-client fontconfig libfreetype6 libfontconfig1 \
    && rm -rf /var/lib/apt/lists/*

ENV GIT_SSH "/usr/bin/ssh"
