#!/bin/bash

sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
chmod -R 775 /var/www/html;
chown -R www-data /var/www/html;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

echo "Wordpress: set up!"

echo "Wordpress started on :9000"
/usr/sbin/php-fpm7.3 -F