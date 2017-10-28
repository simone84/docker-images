FROM centos:6
# Set the working directory
WORKDIR /xxx
# Copy the current directory contents into the container
ADD ./contents /xxx
# Install any needed packages specified in requirements.txt
RUN yum install -y packages
CMD ["python", "script.py"]
ENTRYPOINT ["/usr/sbin/script", "-D", "FOREGROUND"]
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
ENV NAME World
