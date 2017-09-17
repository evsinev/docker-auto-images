FROM mariadb:10.0.32

RUN echo 'deb http://deb.debian.org/debian sid main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -qq -t sid install -y redir \
    && echo 'redir :3307 :3306' > /docker-entrypoint-initdb.d/redir.sh \
    && chmod a+x /docker-entrypoint-initdb.d/redir.sh

