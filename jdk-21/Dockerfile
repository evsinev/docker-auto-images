FROM maven:3.9.4-amazoncorretto-21-debian-bookworm

# Disable interactive mode
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -qq install -y gettext openssh-client wget curl redir git xsltproc rsync gnupg lsb-release default-mysql-client \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD []

env MAVEN_CONFIG=

ENV GIT_SSH "/usr/bin/ssh"
