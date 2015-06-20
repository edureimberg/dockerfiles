FROM ubuntu:trusty
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 19-06-2015
RUN apt-get update
RUN apt-get install -y wget git curl 
RUN cd ~
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "source /etc/profile.d/rvm.sh"
RUN /bin/bash -l -c "rvm install 2.2.0"
RUN /bin/bash -l -c "gem install knife-solo"
RUN echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc
