FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	mariadb-server
COPY init.sql .
COPY 50-server.cnf ./etc/mysql/mariadb.conf.d/.
RUN mkdir /run/mysqld
CMD ["mysqld"] 

