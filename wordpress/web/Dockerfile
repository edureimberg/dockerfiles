FROM ubuntu:precise
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 01-04-2015
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y apache2 php5 libapache2-mod-php5 php5-mysql php5-gd libssh2-php
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
