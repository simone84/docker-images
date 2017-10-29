FROM centos:6
# Install any needed packages specified in requirements.txt
RUN yum install -y java-1.8.0-openjdk.x86_64 wget
RUN useradd -r tomcat8 --shell /bin/false
RUN wget http://mirrors.koehn.com/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz -P /tmp
RUN tar -zxf /tmp/apache-tomcat-8.5.23.tar.gz -C /opt
RUN ln -s /opt/apache-tomcat-8.5.23/ /opt/tomcat-latest
RUN chown -hR tomcat8: /opt/tomcat-latest /opt/apache-tomcat-8.5.23
# Run Tomcat (This container needs to run in background mode -d)
ENTRYPOINT ["/opt/tomcat-latest/bin/catalina.sh", "run"]
# Make port 8080 available to the world outside this container
EXPOSE 8080
