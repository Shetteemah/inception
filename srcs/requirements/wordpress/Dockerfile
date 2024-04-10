FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm
COPY www.conf ./etc/php/7.4/fpm/pool.d/.
RUN mkdir /run/php
CMD ["php-fpm7.4", "-F"]

