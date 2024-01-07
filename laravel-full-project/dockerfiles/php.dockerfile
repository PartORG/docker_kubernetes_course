FROM php:8.1-fpm-alpine
 
WORKDIR /var/www/html
 
COPY src .
 
RUN docker-php-ext-install pdo pdo_mysql
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel 
 
# RUN chown -R laravel:laravel .

# Here we don't have CMD or ENTRYPOINT:
#  - they will be used from a base image
#  - this base php image has it's CMD and ENTRYPOINT commands that will be executed
#  - those base image commands invoke php interpreter
