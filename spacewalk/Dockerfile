FROM centos:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 01-07-2015
RUN rpm -Uvh http://yum.spacewalkproject.org/2.3/RHEL/7/x86_64/spacewalk-repo-2.3-4.el7.noarch.rpm \
  && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
ADD jpackage-generic.repo /etc/yum.repos.d/
RUN yum -y install spacewalk-setup-postgresql
RUN yum -y install spacewalk-postgresql
#RUN spacewalk-setup --disconnected
#EXPOSE 80,443,5222,5269
#ENTRYPOINT
