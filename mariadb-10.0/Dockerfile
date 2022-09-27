FROM mariadb:10.0.30

RUN echo 'deb http://deb.debian.org/debian sid main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -qq -t sid install -y curl runit \
    && sed -i 's/^.bind-address/bind-address/' /etc/mysql/my.cnf

COPY developer.cnf    /etc/mysql/conf.d/developer.cnf
COPY fetch-my-cnf.sh  /docker-entrypoint-initdb.d/fetch-my-cnf.sh
COPY redir-service.sh /service/redir/run
COPY redir.sh         /docker-entrypoint-initdb.d/redir.sh

RUN    chown mysql /etc/mysql/conf.d/developer.cnf \
    && chown mysql /etc/mysql/my.cnf \
    && chown -R mysql:mysql /service \
    && chmod +x /service/redir/run /docker-entrypoint-initdb.d/*
