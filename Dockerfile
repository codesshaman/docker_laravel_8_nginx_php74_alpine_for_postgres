FROM php:7.4.30-fpm-alpine

WORKDIR /var/www

RUN apk update add wget curl zip unzip nano mc

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

COPY composer-setup.php . 

RUN php composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    rm composer-setup.php

RUN docker-php-ext-install pdo pdo_pgsql

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* var/cache/apk* && set -x

RUN chown -R www-data:www-data /var/www

EXPOSE 9000