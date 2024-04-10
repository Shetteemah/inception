#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$WP_NAME --dbuser=$WP_USER --dbpass=$WP_PASS --dbhost=$WP_HOST --allow-root
./wp-cli.phar core install --url=$URL --title=$TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
chown www-data:www-data /var/www/html
php-fpm7.4 -F
