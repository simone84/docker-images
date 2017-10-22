FROM centos:6
# Set the working directory to /tmp
WORKDIR /tmp
# Copy the current directory contents into the container at /app
ADD ./assesment.sh /tmp/
# run the script
RUN /tmp/assesment.sh
