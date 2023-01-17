FROM debian:buster

# Install Nginx
RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl

# Install SSL certificate
RUN openssl req -x509 -nodes -days 365 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=itaureli.42.fr" \
    -addext "subjectAltName=DNS:itaureli.42.fr" \
    -newkey rsa:2048 -keyout /etc/ssl/private/itaureli.key \
    -out /etc/ssl/certs/itaureli.crt

WORKDIR /var/www/wordpress

# Copy nginx.conf
COPY ./config/nginx.conf /etc/nginx/nginx.conf

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

