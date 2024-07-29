FROM debian:11

RUN apt-get update && \
	apt-get install -y nginx openssl

RUN mkdir -p /etc/ssl/private /etc/ssl/certs && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
    -subj "/C=AT/ST=Vienna/L=Vienna/O=42School/OU=rlurai/CN=rluari/"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/wordpress

RUN chown -R www-data:www-data /var/www/wordpress

RUN mkdir -p /run/nginx && chown -R www-data:www-data /var/lib/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
