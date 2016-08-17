FROM ubuntu:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATE=07-01-2016
RUN apt-get update
ADD rundeck-launcher-2.6.2.jar /opt/
RUN apt-get -y install openjdk-7-jdk openssh-client 
EXPOSE 4440
CMD ["java", "-jar", "/opt/rundeck-launcher-2.6.2.jar"]