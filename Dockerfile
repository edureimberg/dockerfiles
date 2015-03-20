FROM ubuntu:precise
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y apache2
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
