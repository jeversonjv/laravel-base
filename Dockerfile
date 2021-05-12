FROM ibrunotome/php:8.0-fpm

ARG COMPOSER_FLAGS

WORKDIR /var/www

COPY . /var/www
COPY php.ini /usr/local/etc/php/php.ini
COPY www.conf /usr/local/etc/php-fpm.d/www.conf

RUN composer install $COMPOSER_FLAGS \
    && chown -R 0:www-data /var/www \
    && find /var/www -type f -exec chmod 664 {} \; \
    && find /var/www -type d -exec chmod 775 {} \; \
    && chgrp -R www-data storage bootstrap/cache \
    && chmod -R ug+rwx storage bootstrap/cache

CMD ["/usr/local/sbin/php-fpm"]

EXPOSE 9000
