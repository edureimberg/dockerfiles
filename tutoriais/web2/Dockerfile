FROM ubuntu:latest
MAINTAINER Eduardo Reimberg <eduardo.reimberg@gmail.com>

RUN apt-get -y update
RUN apt-get -y install \
  apache2 \
  php \
  libapache2-mod-php \
  php-mcrypt \
  supervisor

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD vhost.conf /etc/apache2/sites-available/php
ADD info.php /var/www/html/info.php
RUN a2dissite 000-default.conf
RUN ln -s /etc/apache2/sites-available/php /etc/apache2/sites-enabled/php

EXPOSE 80
CMD ["/usr/bin/supervisord"]
