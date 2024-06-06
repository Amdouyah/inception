FROM    debian:latest

RUN     apt-get update && \ 
        apt-get install -y mariadb-server

# RUN mkdir -p /var/run/mysqld

# change the mariadb config to listen on all network avialable
RUN sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /

EXPOSE  3306

ENTRYPOINT ["sh", "script.sh"]

CMD ["mariadbd", "--user=root"]


#show databases;
# use (name db);
# show tables
# select * from wp_users : show all info in wp users