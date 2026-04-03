FROM tomcat:9-jdk17

# remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# copy war file
COPY target/java-war-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
