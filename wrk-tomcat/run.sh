#!/bin/sh
wrk -c 50k  -d 2m -t 4 --s script.lua http://tomcat1:8080/
