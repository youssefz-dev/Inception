From debian:bookworm
RUN apt update -y && apt install php-fpm php-mysqli wget -y
RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf
WORKDIR /var/www/html
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && ./wp-cli.phar core download --allow-root
COPY script.sh .
CMD ["bash", "script.sh"]