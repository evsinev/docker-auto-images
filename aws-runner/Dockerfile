FROM centos:7

RUN yum install awscli openssh-clients -y

COPY .aws /root/.aws

RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh && \
    touch ~/.ssh/known_hosts && \
    chmod 644 ~/.ssh/known_hosts

COPY run.sh run.sh

ENV INSTANCE=0000000000
ENV REGION=0000000000
ENV AWS_ACCESS_KEY_ID=0000000000
ENV AWS_SECRET_ACCESS_KEY=0000000000
ENV USERNAME=0000000000
ENV URL_BASH=0000000000
ENV SSH_PRIVATE_KEY=0000000000

ENTRYPOINT ["/run.sh"]
