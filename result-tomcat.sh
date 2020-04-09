#!/bin/sh
docker-compose -f docker-compose-tomcat.yml logs wrk1
docker-compose -f docker-compose-tomcat.yml logs wrk2
docker-compose -f docker-compose-tomcat.yml logs wrk3
docker-compose -f docker-compose-tomcat.yml logs wrk4
docker-compose -f docker-compose-tomcat.yml logs wrk5
docker-compose -f docker-compose-tomcat.yml logs wrk6
