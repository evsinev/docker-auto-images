FROM maven:3.9.12-amazoncorretto-21-debian-trixie

ENV DEBIAN_FRONTEND=noninteractive
ENV GIT_SSH "/usr/bin/ssh"

RUN  \
    apt-get update \
    && apt-get install -y python3-nwdiag gettext openssh-client default-mysql-client redir git xsltproc rsync
