#!/bin/sh
docker-compose -f docker-compose-tomcat.yml exec tomcat1 netstat -s | grep "connections established"
