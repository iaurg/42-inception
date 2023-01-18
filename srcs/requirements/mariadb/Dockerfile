FROM  debian:buster

# Install MariaDB
RUN apt-get update && apt-get install -y \
    mariadb-server \
    wget

# Create directory to start MariaDB
RUN mkdir -p /var/run/mysqld && chmod 777 /var/run/mysqld

# Copy my.cnf
COPY ./config/config.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy init.sql
COPY ./config/init.sql /tmp/init.sql

# Create a volume for MariaDB
VOLUME /var/lib/mysql

# Expose port 3306
EXPOSE 3306

# Start MariaDB
CMD ["mysqld", "--user=root"]