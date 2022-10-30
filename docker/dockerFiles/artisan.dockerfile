FROM php:8.0.9-fpm-alpine

RUN apk update
RUN apk upgrade
RUN apk add bash
