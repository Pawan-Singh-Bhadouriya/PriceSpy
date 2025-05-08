# Use the official Tomcat base image
FROM tomcat:9.0

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into the Tomcat webapps directory
COPY PriceSpy.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080
