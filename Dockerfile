# Use official Tomcat image with JDK
FROM tomcat:9.0-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your MediMart WAR file into Tomcat as ROOT
COPY PharmacyStore.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Render needs this)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
