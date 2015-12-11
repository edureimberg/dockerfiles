FROM centos:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"

#Instalação do supervisor
RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install supervisor

ADD supervisord.conf /etc/supervisord.d/supervisord.conf

#Instalação repositório do spacewalk
RUN rpm -Uvh http://yum.spacewalkproject.org/2.4/RHEL/7/x86_64/spacewalk-repo-2.4-3.el7.noarch.rpm

#Instalaçao do repositório jpackage
ADD jpackage-generic.repo /etc/yum.repos.d/jpackage-generic.repo

#Instalação do openjdk
RUN yum install epel-release -y

#Instalação do spacewalk
RUN yum install -y spacewalk-postgresql 

#Copia do arquivo de respostas para configuracao do spacewalk
ADD answer_file.txt /root/

ADD config_spacewalk.sh /root/

#Configura o spacewalk
#RUN spacewalk-setup --disconnected --external-postgresql --answer-file=/root/answer_file.txt

#Expoe as portas necessárias
EXPOSE 80 443 5222

#Inicia o spacewalk
#CMD ["/usr/sbin/spacewalk-service start"]
