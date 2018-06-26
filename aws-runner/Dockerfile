FROM centos:7

RUN yum install awscli openssh-clients -y

COPY .aws /root/.aws

RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh && \
    touch ~/.ssh/known_hosts && \
    chmod 644 ~/.ssh/known_hosts

