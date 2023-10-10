FROM maven:3.9.4-amazoncorretto-21-debian-bookworm

# Disable interactive mode
ENV DEBIAN_FRONTEND=noninteractive

RUN echo 'deb http://deb.debian.org/debian sid main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get -qq -t sid install -y gettext openssh-client wget curl redir git xsltproc rsync gnupg \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []

ENV GIT_SSH "/usr/bin/ssh"
