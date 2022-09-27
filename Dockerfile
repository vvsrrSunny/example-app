FROM php:9.0-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql
