FROM debian:buster

# Install PHP and PHP extensions
RUN apt-get update && apt-get install -y \
    php7.3-fpm \
    php7.3-mysql \
    php7.3-curl \
    php7.3-gd \
    php7.3-intl \
    php7.3-mbstring \
    php7.3-soap \
    php7.3-xml \
    php7.3-xmlrpc \
    php7.3-zip \
    wget

# Create directory to start php
RUN mkdir -p /var/run/php && chmod 777 /var/run/php


WORKDIR /var/www/html

# Get Wordpress
RUN wget https://br.wordpress.org/wordpress-6.1.1-pt_BR.tar.gz \
    && tar xzf wordpress-6.1.1-pt_BR.tar.gz \
    && mv wordpress/* . \
    && rm wordpress-6.1.1-pt_BR.tar.gz

# Copy wp-config.php
COPY ./config/wp-config.php /var/www/html/wp-config.php

COPY ./config/setup.sh /var/www
# Remove wp-config-sample.php
# RUN rm /var/www/wordpress/wp-config-sample.php

# Block access to wp-config.php
RUN chmod 600 /var/www/html/wp-config.php


# Expose port 9000
EXPOSE 9000

# Start PHP-FPM
CMD bash /var/www/setup.sh