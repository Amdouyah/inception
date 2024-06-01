#!/bin/bash

wp core download --allow-root
#download the ltest version of WordPress , run as the root user

wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb:3306 --alow-root

wp core install --url=${WEBSITE} --title=inception --admin_user=${ADMIN} --admin_pasword=${PASS} --admin_email=${EMAIL} --allow-root

sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf