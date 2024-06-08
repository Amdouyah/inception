FROM    debian:latest

RUN     apt-get update && apt install -y wget

RUN     apt-get install -y php8.2-fpm php8.2-mysql php8.2-curl mariadb-client

RUN mkdir -p /var/www/html

COPY ./tools/script.sh .
RUN chmod +x script.sh
# PHP-FPM listens for incoming request from web server "nginx"and manage a pool of worker processes to handel these requests 

EXPOSE 9000

CMD ["sh", "script.sh"]
