FROM ubuntu:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 28-07-2015
RUN apt-get -y install ntp
ADD ntp.conf /etc/ntp.conf
EXPOSE 123
CMD ["ntpd", "-d"]
