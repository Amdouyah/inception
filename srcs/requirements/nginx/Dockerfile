FROM debian:latest

RUN apt-get update 

RUN apt-get install -y nginx

RUN mkdir -p /var/www/html/wordpress

COPY ./tools/nginx.conf /etc/nginx/conf.d/

COPY ssl/cert.pem /etc/nginx/certs/
COPY ssl/key.pem  /etc/nginx/private/


EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

# Nginx forwards PHP requests to PHP-FPM, which processes the requests,
# executes PHP scripts, and sends back responses to Nginx for delivery to the client.