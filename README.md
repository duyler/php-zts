# PHP-FPM with ZTS docker build
## Based on the official Dockerfile of the PHP docker image, which includes zts for fpm and additional packages.

https://github.com/docker-library/php/blob/master/8.3/bookworm/fpm/Dockerfile

### PHP version
#### Build always include only latest PHP version 8.x.
Current version: `8.3.2`

### Usage

`docker pull duyler/php-fpm-zts`

### PHP extensions included:

* bcmath
* bz2
* calendar
* ctype
* curl
* dba
* exif
* ffi
* fileinfo
* filter
* ftp
* gd
* gettext
* gmp
* iconv
* imap
* intl
* ldap
* mbstring
* mysqli
* opcache
* parallel
* pcntl
* pdo
* pdo_mysql
* pdo_pgsql
* pdo_sqlite
* pgsql
* phar
* posix
* shmop
* simplexml
* soap
* sockets
* sodium
* sysvmsg
* sysvsem
* sysvshm
* tidy
* xml
* xsl
* zip
* pcov
* msgpack
* redis
* memcached
* xdebug

### Additional packages:

* Composer
