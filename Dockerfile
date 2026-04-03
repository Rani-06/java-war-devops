FROM tomcat:9-jdk17

# remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# copy war file
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 80
