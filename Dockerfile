FROM ubuntu:18.04 
MAINTAINER "info@gamutgurus.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ADD apache-tomcat-8.5.57.tar.gz /root
COPY target/gamutgurus.war /root/apache-tomcat-8.5.57.tar.gz/webapps
ENTRYPOINT /root/apache-tomcat-8.5.57.tar.gz/bin/startup.sh && bash

