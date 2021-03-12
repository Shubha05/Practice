FROM tomcat:8.0-alpine
MAINTAINER Shubha Agrawal
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Test12345 -O /usr/local/tomcat/webapps/sampleapplication.war http://192.168.1.102:8081/artifactory/Shubha.Agrawal05/com/nagarro/devops-tools/devops/demosampleapplication/1.0.0-SNAPSHOT/demosampleapplication-1.0.0-20210311.201512-3.war
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
