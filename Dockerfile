FROM tomcat:8.0.20-jre8
MAINTAINER "CHAITHANYA"
LABEL "gmail"="chaithanya1812@gmail.com"
ENV name="chaitu" \
    pass="12345"
RUN useradd $name && echo "$name:$pass" | chpasswd
COPY ./sampleproject.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/ 
USER $name
