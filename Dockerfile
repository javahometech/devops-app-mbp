FROM alpine:3.19.1

LABEL app="api"
LABEL appName="japp"

# Install java17
RUN apk add --no-cache openjdk17

# Set present working directory
WORKDIR /opt

# Download tomcat9
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz .
RUN tar xf apache-tomcat-9.0.88.tar.gz && mv apache-tomcat-9.0.88 tomcat9

# Copy war file to webapps folder
COPY target/devops-app.war /opt/tomcat9/webapps

EXPOSE 8080

CMD [ "/opt/tomcat9/bin/catalina.sh", "run" ]
