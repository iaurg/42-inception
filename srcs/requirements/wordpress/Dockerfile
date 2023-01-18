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

WORKDIR /var/www

# Create directory to start php
RUN mkdir -p /var/run/php && chmod 777 /var/run/php

# Get Wordpress
RUN wget https://br.wordpress.org/wordpress-6.1.1-pt_BR.tar.gz \
    && tar xzf wordpress-6.1.1-pt_BR.tar.gz \
    && rm wordpress-6.1.1-pt_BR.tar.gz

# Copy wp-config.php
COPY ./config/wp-config.php /var/www/wordpress/wp-config.php

# Remove wp-config-sample.php
# RUN rm /var/www/wordpress/wp-config-sample.php

# Block access to wp-config.php
RUN chmod 600 /var/www/wordpress/wp-config.php

# Create a volume for Wordpress
VOLUME /var/www/wordpress

# Expose port 9000
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm7.3", "-F"]