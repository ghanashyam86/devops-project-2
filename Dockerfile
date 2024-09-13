# Use the official httpd image from Docker Hub
FROM httpd:latest

# Copy your custom index.html to the Apache web root directory
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 for HTTP traffic
EXPOSE 80

# The httpd image automatically starts Apache, so no CMD or ENTRYPOINT is needed

