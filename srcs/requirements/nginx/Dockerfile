From debian:bookworm
RUN apt update -y && apt install nginx openssl -y
COPY default /etc/nginx/sites-available
RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -nodes -subj /
CMD ["nginx", "-g", "daemon off;"]