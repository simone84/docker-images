FROM centos:6
# Set the working directory
#WORKDIR /xxx
# Copy the current directory contents into the container
ADD ./etc/init.d/tomcat8 /etc/init.d/tomcat8
# Install any needed packages specified in requirements.txt
RUN yum install -y java-1.8.0-openjdk.x86_64 wget
RUN useradd -r tomcat8 --shell /bin/false
RUN wget http://mirrors.koehn.com/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz -P /tmp
RUN tar -zxf /tmp/apache-tomcat-8.5.23.tar.gz -C /opt
RUN ln -s /opt/apache-tomcat-8.5.23/ /opt/tomcat-latest
RUN chown -hR tomcat8: /opt/tomcat-latest /opt/apache-tomcat-8.5.23
#CMD ["python", "script.py"]
#ENTRYPOINT ["/opt/tomcat-latest/bin/startup.sh", "-D", "FOREGROUND"]
#ENTRYPOINT service tomcat8 start && bash
ENTRYPOINT ["/opt/tomcat-latest/bin/catalina.sh", "run"]
# Make port 8080 available to the world outside this container
EXPOSE 8080
