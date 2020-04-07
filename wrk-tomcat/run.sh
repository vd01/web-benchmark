#!/bin/sh
wrk -c 40k  -d 1m -t 2 --s script.lua http://tomcat1:8080/
