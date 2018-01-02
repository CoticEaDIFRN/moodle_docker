# Inspiration: https://github.com/jda/docker-moodle
# Inspiration: https://docs.moodle.org/34/en/Step-by-step_Installation_Guide_for_Ubuntu
FROM php:7.2-apache
LABEL maintainer="Kelson Medeiros <kelsoncm@gmail.com>"


VOLUME ["/var/moodledata"]
EXPOSE 80

#COPY moodle-config.php /var/www/html/config.php
COPY moodlecron /etc/cron.d/moodlecron

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

#ENV MOODLE_URL http://localhost

COPY foreground.sh /etc/apache2/foreground.sh

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libcurl4-openssl-dev \
        libpspell-dev \
        libxml++2.6-dev \
        libpq-dev \
        git-core \
        libldb-dev \
        libldap2-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu \
    && docker-php-ext-install -j$(nproc) curl iconv pspell gd intl xml xmlrpc ldap zip soap mbstring pgsql

WORKDIR /var/www/html

RUN git clone -b v3.4.0 git://git.moodle.org/moodle.git --depth=1 /var/www/html \
    && chmod 2777 /var/www/html \
	&& chown -R www-data:www-data /var/www/html \
	&& chmod +x /etc/apache2/foreground.sh \
    && chmod 0644 /etc/cron.d/moodlecron 

# Enable SSL, moodle requires it
#RUN a2enmod ssl && a2ensite default-ssl

# Cleanup, this is ran to reduce the resulting size of the image.
RUN apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/dpkg/* /var/lib/cache/* /var/lib/log/*

CMD ["/etc/apache2/foreground.sh"]


# An almost complete list:

# RUN apt update
# RUN apt upgrade -y
# RUN apt install -y apt-utils
# RUN a2enmod rewrite
# RUN apt install -y libmcrypt-dev
# RUN docker-php-ext-install mcrypt
# RUN apt install -y libicu-dev
# RUN docker-php-ext-install -j$(nproc) intl
# RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
# RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ 
# RUN docker-php-ext-install -j$(nproc) gd    
# RUN apt install -y php-apc    
# RUN apt install -y libxml2-dev 
# RUN apt install -y libldb-dev
# RUN apt install -y libldap2-dev 
# RUN apt install -y libxml2-dev
# RUN apt install -y libssl-dev
# RUN apt install -y libxslt-dev
# RUN apt install -y libpq-dev
# RUN apt install -y postgresql-client
# RUN apt install -y mysql-client 
# RUN apt install -y libsqlite3-dev
# RUN apt install -y libsqlite3-0
# RUN apt install -y libc-client-dev
# RUN apt install -y libkrb5-dev
# RUN apt install -y curl
# RUN apt install -y libcurl3
# RUN apt install -y libcurl3-dev
# RUN apt install -y firebird-dev
# RUN apt-get install -y libpspell-dev
# RUN apt-get install -y aspell-en
# RUN apt-get install -y aspell-de  
# RUN apt install -y libtidy-dev
# RUN apt install -y libsnmp-dev
# RUN apt install -y librecode0
# RUN apt install -y librecode-dev
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
# #RUN pecl install apc
# RUN docker-php-ext-install opcache
# RUN yes | pecl install xdebug \
#     && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
#     && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
#     && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini
# RUN docker-php-ext-install soap
# RUN docker-php-ext-install ftp
# RUN docker-php-ext-install xsl
# RUN docker-php-ext-install bcmath
# RUN docker-php-ext-install calendar
# RUN docker-php-ext-install ctype
# RUN docker-php-ext-install dba
# RUN docker-php-ext-install dom
# RUN docker-php-ext-install zip
# RUN docker-php-ext-install session
# RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu
# RUN docker-php-ext-install ldap
# RUN docker-php-ext-install json
# RUN docker-php-ext-install hash
# RUN docker-php-ext-install sockets
# RUN docker-php-ext-install pdo
# RUN docker-php-ext-install mbstring
# RUN docker-php-ext-install tokenizer
# RUN docker-php-ext-install pgsql
# RUN docker-php-ext-install pdo_pgsql
# RUN docker-php-ext-install pdo_mysql 
# RUN docker-php-ext-install pdo_sqlite
# RUN docker-php-ext-install intl
# RUN docker-php-ext-install mcrypt
# RUN docker-php-ext-install mysqli
# RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
# RUN docker-php-ext-install imap
# RUN docker-php-ext-install gd
# RUN docker-php-ext-install curl
# RUN docker-php-ext-install exif
# RUN docker-php-ext-install fileinfo
# RUN docker-php-ext-install gettext
# #RUN apt install -y libgmp-dev # idk
# #RUN docker-php-ext-install gmp # idk
# RUN docker-php-ext-install iconv
# RUN docker-php-ext-install interbase
# RUN docker-php-ext-install pdo_firebird
# RUN docker-php-ext-install opcache
# #RUN docker-php-ext-install oci8 # idk
# #RUN docker-php-ext-install odbc # idk
# RUN docker-php-ext-install pcntl
# #RUN apt install -y freetds-dev # idk
# #RUN docker-php-ext-install pdo_dblib  # idk
# #RUN docker-php-ext-install pdo_oci # idk
# #RUN docker-php-ext-install pdo_odbc # idk
# RUN docker-php-ext-install phar
# RUN docker-php-ext-install posix
# RUN docker-php-ext-install pspell
# #RUN apt install -y libreadline-dev # idk
# #RUN docker-php-ext-install readline # idk
# RUN docker-php-ext-install recode
# RUN docker-php-ext-install shmop
# RUN docker-php-ext-install simplexml
# RUN docker-php-ext-install snmp
# RUN docker-php-ext-install sysvmsg
# RUN docker-php-ext-install sysvsem
# RUN docker-php-ext-install sysvshm
# RUN docker-php-ext-install tidy
# RUN docker-php-ext-install wddx
# RUN docker-php-ext-install xml
# #RUN apt install -y libxml2-dev # idk
# #RUN docker-php-ext-install xmlreader # idk
# RUN docker-php-ext-install xmlrpc
# RUN docker-php-ext-install xmlwriter             
# # idk bz2 enchant 
