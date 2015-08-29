FROM ubuntu:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 28-07-2015
ENV MYSQL_PASS password
RUN apt-get update
RUN apt-get -y install mysql-client mysql-common mysql-server
VOLUME ["/dados"]
ADD my.cnf /etc/mysql/my.cnf
ADD mysql_config.sh /opt/mysql_config.sh
EXPOSE 3306
CMD "/opt/mysql_config.sh"
