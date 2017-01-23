FROM ubuntu:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATE 23-01-2017
RUN apt-get update
RUN apt-get -y install wget
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update
RUN apt-get -y install jenkins
EXPOSE 8080
CMD ["/usr/bin/java", "-Djava.awt.headless=true", "-jar", "/usr/share/jenkins/jenkins.war", "--webroot=/var/cache/jenkins/war", "--httpPort=8080"]
