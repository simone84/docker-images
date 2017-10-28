FROM centos:6
# Set the working directory to /app
WORKDIR /tmp
# Install any needed packages specified in requirements.txt
RUN yum install -y httpd
# Add contents to the container
ADD ./var/www/html/index.html /var/www/html/index.html
# Make port 80 available to the world outside this container
EXPOSE 80
#Entrypoint to run httpd in background
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
