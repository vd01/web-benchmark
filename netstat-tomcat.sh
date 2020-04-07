#!/bin/sh
docker-compose -f docker-compose-tomcat.yml exec tomcat1 netstat -antp | grep EST | wc
