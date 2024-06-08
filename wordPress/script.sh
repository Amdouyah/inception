#!/bin/bash

mkdir -p /run/php

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp

sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

mkdir -p /var/www/html/wordpress 

cd /var/www/html/wordpress

wp core download --allow-root
#download the ltest version of WordPress , run as the root user

wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=mariadb:3306

wp core install --allow-root --url=${WEBSITE} --title=inception --admin_user=${ADMIN} --admin_password=${PASS} --admin_email=${EMAIL}

wp user create --allow-root ${USER}  ${USER_MAIL} --role=author --user_pass=${USER_PASS}

exec php-fpm8.2 -F
# starts PHP-FPM in the foreground, replacing the current shell process with PHP-FPM. This setup ensures that