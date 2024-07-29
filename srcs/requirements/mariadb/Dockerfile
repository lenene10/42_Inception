FROM debian:11

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y mariadb-server

COPY ./tools/mdb-conf.sh /

COPY ./conf/my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /mdb-conf.sh

RUN mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

ENTRYPOINT ["./mdb-conf.sh"]

CMD ["mysqld"]