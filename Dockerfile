FROM tomcat:jdk8-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/ROOT

LABEL version="1.0"
LABEL description="This image created for testing only"

COPY ROOT.war /usr/local/tomcat/webapps/