FROM tomcat:8.0.20-jre8

COPY ./sampleproject.war /usr/local/tomcat/webapps/maven-web-app.war
