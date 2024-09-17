# Use the official httpd image from Docker Hub
FROM httpd:latest

RUN echo "Listen 8080" >> /usr/local/apache2/conf/httpd.conf


RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
# Copy your custom index.html to the Apache web root directory
COPY index.html /usr/local/apache2/htdocs/

#give access to the index file 
RUN chmod 777 /usr/local/apache2/htdocs/index.html

# Expose port 80 for HTTP traffic
EXPOSE 8080

# The httpd image automatically starts Apache, so no CMD or ENTRYPOINT is needed

