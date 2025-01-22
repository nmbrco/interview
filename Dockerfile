FROM php:8.3-fpm-alpine 

# Install NGINX to sit infront of php-fpm socket
RUN apk update
RUN apk add nginx curl

WORKDIR /var/www

# Copy Nginx Config Files
COPY ./docker/nginx/http.d/ /etc/nginx/http.d/

# Install apk packages
RUN apk upgrade
RUN apk add bash libzip-dev icu-dev git fcgi

# sockets requires headers
RUN apk add --no-cache linux-headers

# Install PHP Extensions
RUN docker-php-ext-configure intl
RUN docker-php-ext-install opcache pdo pdo_mysql zip intl pcntl sockets

RUN curl -sS https://getcomposer.org/installer | php -- \      
    --install-dir=/usr/local/bin --filename=composer  

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer 

RUN sed -i 's|;access.log = log/$pool.access.log|access.log = /dev/stdout|g' /usr/local/etc/php-fpm.d/www.conf
RUN sed -i 's|;php_admin_value[error_log] = /var/log/fpm-php.www.log|php_admin_value[error_log] = /dev/stderr|g' /usr/local/etc/php-fpm.d/www.conf
RUN sed -i 's|;daemonize = yes|daemonize = no|g' /usr/local/etc/php-fpm.conf
RUN sed -i 's|;error_log = log/php-fpm.log|error_log = /dev/stderr|g' /usr/local/etc/php-fpm.conf

COPY . .

# Copy existing application directory permissions
# RUN chown -R www-data:www-data /var/www
RUN chmod -R 755 /var/www
RUN chmod -R 775 /var/www/storage
RUN chmod -R 775 /var/www/bootstrap/cache

RUN composer install

EXPOSE 9090

CMD nginx; php-fpm