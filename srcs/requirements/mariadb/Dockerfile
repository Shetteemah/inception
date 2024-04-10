FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	mariadb-server
COPY script.sh .
RUN chmod +x script.sh
COPY init.sql .
COPY 50-server.cnf ./etc/mysql/mariadb.conf.d/.
RUN mkdir /run/mysqld
CMD ["./script.sh"] 

