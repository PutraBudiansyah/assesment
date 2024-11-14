FROM php:8.1-fpm-alpine

RUN apk add --no-cache nginx

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html

COPY index.php /var/www/html/

EXPOSE 80

CMD ["sh", "-c", "/usr/sbin/php-fpm && nginx -g 'daemon off;'"]
