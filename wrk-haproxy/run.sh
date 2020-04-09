#!/bin/sh
wrk -c 30k -d 2m -t 2 --s script.lua http://haproxy1:80/test.html
