FROM  debian:buster

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server

# Copy my.cnf
COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/

# Copy sql
COPY ./tools /var/www/

# Expose port 3306
EXPOSE 3306

RUN service mysql start && mysql < /var/www/create_db.sql && rm -f /var/www/create_db.sql

# Start MariaDB
CMD /usr/bin/mysqld_safe