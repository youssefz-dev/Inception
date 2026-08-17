From debian:bookworm
RUN apt update -y && apt install mariadb-server -y
RUN echo "[mysqld]\nuser=root" >  /etc/mysql/mariadb.conf.d/50-server.cnf
COPY script.sh .
CMD ["bash", "script.sh"]