FROM tomcat:8.0-alpine
MAINTAINER Shubha Agrawal
RUN apk update
RUN apk add wget
RUN wget --user=shubha4150 --password=Test12345 -O /usr/local/tomcat/webapps/sampleapplication.war http://localhost:8082/artifactory/Shubha.Agrawal05/com/mkyong/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
