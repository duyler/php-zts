# PHP with ZTS docker build
## Based on the official Dockerfile of the PHP docker image, which includes zts and additional packages.

https://github.com/docker-library/php/blob/master/8.3/bookworm/fpm/Dockerfile

### PHP version
#### Build always include only latest PHP version 8.x.
#### This build created with command `docker buildx build --push --platform linux/arm64/v8,linux/amd64 --tag duyler/php-zts:latest .`

### Usage

`docker pull duyler/php-zts`

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
* msgpack
* mysqli
* memcached
* opcache
* parallel
* pcov
* pcntl
* pdo
* pdo_mysql
* pdo_pgsql
* pdo_sqlite
* pgsql
* posix
* redis
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

### Additional packages:

* Composer


