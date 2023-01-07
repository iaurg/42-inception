FROM debian:buster

RUN apt-get update && apt-get install -y nginx

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./config/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]

