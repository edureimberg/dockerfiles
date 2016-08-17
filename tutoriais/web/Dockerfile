FROM centos:centos7
MAINTAINER Leonel Baer <leonel@lysender.com>

# Install packages
RUN yum -y update &&  yum clean all
RUN yum -y install epel-release && yum clean all

# Install MariaDB, Apache, PHP and misc tools
RUN yum -y install mariadb-server \
    mariadb-devel \
    supervisor \
    git \
    tree \
    httpd \
    php \
    php-bcmath \
    php-common \
    php-pear \
    php-mysql \
    php-cli \
    php-devel \
    php-gd \
    php-fpm \
    php-pdo \
    php-mbstring \
    php-mcrypt \
    php-soap \
    php-xml \
    php-xmlrpc \
    bind-utils \
    pwgen \
    psmisc \
    net-tools \
    hostname \
    curl \
    curl-devel \
    sqlite \
    sendmail \
    cronie && yum clean all

# Add config files and scripts
ADD ./vhost.conf /etc/httpd/conf.d/default-vhost.conf
ADD ./index.php /var/www/html/index.php

# Configure servicies
ADD ./start.sh /start.sh
ADD ./supervisor-httpd.ini /etc/supervisord.d/httpd.ini

RUN chmod 755 /start.sh

VOLUME ["/var/www/html", "/var/log/httpd"]

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
