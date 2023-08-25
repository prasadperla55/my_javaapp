#FROM tomcat:9-jdk11-adoptopenjdk-hotspot
#WORKDIR /usr/local/tomcat/webapps
#COPY target/*.war /usr/local/tomcat/webapps/webapp.war
#RUN chmod -R 755 /usr/local/tomcat/webapps/webapp.war

FROM ubuntu
RUN apt-get update
RUN apt install default-jdk -y
RUN apt-get install tomcat9 -y
COPY target/*.war /usr/local/tomcat/webapps/webapp.war
RUN chmod -R 755 /usr/local/tomcat/webapps/webapp.war

