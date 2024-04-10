FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm
RUN mkdir /run/php
CMD ["php-fpm7.4", "-F"]

