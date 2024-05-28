FROM debian:latest

RUN apt-get update 

RUN apt-get install -y nginx && \
    apt-get clean

RUN chmod -R 777 /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY ssl/cert.pem /etc/nginx/certs/
COPY ssl/key.pem  /etc/nginx/private/

COPY html/index.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# CMD ['sh']

#docker ps to check ur containers
#docker kill

#docker biuld -t "name image " .
#docker run -d --name "name of conatainer " -p"publish" "port" -t name of image
#docker exec -it "name of container " bash
# docker rm -f $(docker ps -aq) rm containers
# docker rmi -f $(docker images -aq) rm images


#ssl
# SSL && TLS are cryptographic protocols designed to provide secure communication over a computer network
# .crt file : containe the public certificate it's used by clients to encrypt data sent to the server
# .key file : containe the private key ,used by the server to decrypt data sent by the client and to sing request  
