#!/bin/sh

#RUN apk add dos2unix && dos2unix /entry.sh

RUN composer install && \
    cp .env.example .env && \
    php artisan key:generate && \
    php artisan config:cache

php artisan migrate
php-fpm
