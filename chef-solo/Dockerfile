FROM ubuntu:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATE=19-01-2016
RUN apt-get update
RUN apt-get -y install curl wget
RUN curl -L https://www.opscode.com/chef/install.sh | bash
ADD chef-repo /
ADD knife.rb /root/.chef/
ADD solo.rb /chef-repo/


