FROM mariadb:10.6.18

RUN apt-get update \
    && apt-get -qq install -y curl runit \
    && sed -i 's/^.bind-address.*=.*127\.0\.0\.1/bind-address=127\.0\.0\.1/' /etc/mysql/my.cnf \
    && sed -i '/skip-name-resolve/d' /etc/mysql/my.cnf

COPY developer.cnf    /etc/mysql/conf.d/developer.cnf
COPY fetch-my-cnf.sh  /docker-entrypoint-initdb.d/fetch-my-cnf.sh
COPY redir-service.sh /service/redir/run
COPY redir.sh         /docker-entrypoint-initdb.d/redir.sh

COPY network-proxy-server /usr/bin/network-proxy-server
RUN chmod a+x /usr/bin/network-proxy-server

RUN    chown mysql /etc/mysql/conf.d/developer.cnf \
    && chown mysql /etc/mysql/my.cnf \
    && chown -R mysql:mysql /service \
    && chmod +x /service/redir/run /docker-entrypoint-initdb.d/*

EXPOSE 3306/tcp
