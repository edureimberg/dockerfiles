FROM ubuntu:trusty
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 01-06-2015
RUN apt-get update
RUN apt-get install -y wget git curl
RUN cd ~
RUN curl -L https://www.opscode.com/chef/install.sh | bash
