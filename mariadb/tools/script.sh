#!bin/sh

if [ ! -d "/run/mysqld" ]; then
	mkdir /run/mysqld;
fi
cat << EOF > /sql.sql
FlUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
FLUSH PRIVILEGES;
EOF

mariadbd --user=root --bootstrap < /sql.sql;
# rm -f /sql.txt;

exec "$@"