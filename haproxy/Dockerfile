FROM haproxy:2.1
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install -y net-tools iputils-ping curl
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
