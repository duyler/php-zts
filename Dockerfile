FROM php:zts

WORKDIR /var/www

RUN apt-get update

# dependencies required packages for PHP-extensions
RUN apt-get -y install curl unzip libbz2-dev sqlite3 libsqlite3-dev libldb-dev \
        libssl-dev libffi-dev libgmp-dev libc-client-dev libkrb5-dev libldap2-dev \
        libcurl4-openssl-dev libjpeg-dev libonig-dev libreadline-dev libsodium-dev \
        libtidy-dev libxslt-dev libzip-dev libfbclient2 libib-util \
        libpq-dev libonig-dev libxml2-dev libmemcached-dev \
        libzip-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev

# Build PHP-extensions
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install bz2
RUN docker-php-ext-install calendar
RUN docker-php-ext-install ctype
RUN docker-php-ext-install curl
RUN docker-php-ext-install dba
RUN docker-php-ext-install exif
RUN docker-php-ext-install ffi
RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install filter
RUN docker-php-ext-install ftp
RUN docker-php-ext-install gd
RUN docker-php-ext-install gettext
RUN docker-php-ext-install gmp
RUN docker-php-ext-install iconv
RUN docker-php-ext-install intl
RUN docker-php-ext-install ldap
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install opcache
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_pgsql
RUN docker-php-ext-install pdo_sqlite
RUN docker-php-ext-install pgsql
RUN docker-php-ext-install posix
RUN docker-php-ext-install shmop
RUN docker-php-ext-install simplexml
RUN docker-php-ext-install soap
RUN docker-php-ext-install sockets
RUN docker-php-ext-install sodium
RUN docker-php-ext-install sysvmsg
RUN docker-php-ext-install sysvsem
RUN docker-php-ext-install sysvshm
RUN docker-php-ext-install tidy
RUN docker-php-ext-install xml
RUN docker-php-ext-install xsl
RUN docker-php-ext-install zip

# install Pecl extansions
RUN pecl install pcov
RUN pecl install msgpack
RUN pecl install redis
RUN pecl install memcached
RUN pecl install imap
RUN pecl install parallel

RUN docker-php-ext-configure pcntl --enable-pcntl

# enable extentions
RUN docker-php-ext-enable pcntl
RUN docker-php-ext-enable pcov
RUN docker-php-ext-enable msgpack
RUN docker-php-ext-enable redis
RUN docker-php-ext-enable memcached
RUN docker-php-ext-enable parallel
RUN docker-php-ext-enable sockets
RUN docker-php-ext-enable pdo_pgsql

# install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
    && chmod 755 /usr/bin/composer

# clear apt packages
RUN apt-get -y autoremove
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
