#!/bin/sh
wrk -c 40k -d 1m -t 2 --s script.lua http://nginx2:80/test.html
