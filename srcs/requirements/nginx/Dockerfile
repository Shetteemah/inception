FROM debian:11

RUN apt update && apt upgrade -y && apt install -y \
	nginx \
	openssl
COPY default ./etc/nginx/sites-available/.
COPY nginx.conf ./etc/nginx/.
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/certs/sheali.42.fr.key -out /etc/ssl/certs/sheali.42.fr.crt -sha256 -days 3650 -nodes -subj "/C=DE/ST=Baden-Wurttemberg/L=Heilbronn/O=42Heilbronn/OU=Shettima Ali ROOT CA/CN=Shettima Ali"
CMD ["nginx", "-g", "daemon off;"]