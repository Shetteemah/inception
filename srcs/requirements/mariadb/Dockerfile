FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	mariadb-server
COPY /tools/script.sh .
RUN chmod +x script.sh
COPY /conf/init.sql .
COPY /conf/50-server.cnf ./etc/mysql/mariadb.conf.d/.
RUN mkdir /run/mysqld
CMD ["./script.sh"] 

