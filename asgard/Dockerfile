FROM ubuntu:14.04
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 28-10-2015
ENV ASGARD_HOME /opt
RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless
ADD asgard-standalone.jar /opt/
ADD Config.groovy /opt/
EXPOSE 8080
CMD ["/usr/bin/java", "-Xmx1024M", "-XX:MaxPermSize=128m", "-jar", "/opt/asgard-standalone.jar"]
