FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm \
	php-mysqli \
	curl
COPY /conf/www.conf ./etc/php/7.4/fpm/pool.d/.
COPY /tools/script.sh .
RUN chmod +x script.sh
RUN mkdir /run/php
CMD ["./script.sh"]

