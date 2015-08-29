FROM ubuntu:precise
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED_AT 13-05-2015
RUN apt-get update
RUN apt-get install -y wget git
RUN wget --no-check-certificate https://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update
RUN apt-get install -y puppetmaster-passenger
RUN apt-get install -y puppetmaster
EXPOSE 8140
ENTRYPOINT [ "/usr/bin/puppet", "master", "--no-daemonize", "--verbose" ]
