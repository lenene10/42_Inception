FROM debian:11

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y curl php php7.4-fpm php-mysql mariadb-client netcat

COPY ./conf/wp_conf.sh /

RUN  chmod +x wp_conf.sh

ENTRYPOINT ["./wp_conf.sh"]

CMD ["/usr/sbin/php-fpm7.4", "-F"]