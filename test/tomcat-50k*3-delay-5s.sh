#!/bin/sh
cp ./scripts/delay-5s.lua ./wrk-tomcat/script.lua
docker-compose -f docker-compose-tomcat.yml down
docker-compose -f docker-compose-tomcat.yml build
docker-compose -f docker-compose-tomcat.yml up -d tomcat1
sleep 5
docker-compose -f docker-compose-tomcat.yml up -d wrk1
sleep 2
docker-compose -f docker-compose-tomcat.yml up -d wrk2
sleep 2
docker-compose -f docker-compose-tomcat.yml up -d wrk3
