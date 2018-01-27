FROM payneteasy:jdk-8

RUN echo 'deb http://deb.debian.org/debian sid main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -qq -t sid install python-nwdiag
