FROM tomcat:8
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install net-tools
ADD server.xml /usr/local/tomcat/conf/
RUN mkdir /usr/local/tomcat/webapps/ROOT
ADD test.html /usr/local/tomcat/webapps/ROOT/
