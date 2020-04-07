#!/bin/sh
docker-compose -f docker-compose-tomcat.yml logs wrk1
docker-compose -f docker-compose-tomcat.yml logs wrk2
docker-compose -f docker-compose-tomcat.yml logs wrk3
