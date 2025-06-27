FROM tomcat:latest
LABEL maintainer="Ma Ping"

# Remove default ROOT app
RUN rm -rf $CATALINA_HOME/webapps/ROOT

# Copy your WAR file as ROOT.war to be deployed automatically
COPY target/calculator.war $CATALINA_HOME/webapps/ROOT.war
