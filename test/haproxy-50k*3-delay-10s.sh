#!/bin/sh
cp ./scripts/delay-10s.lua ./wrk-haproxy/script.lua
docker-compose -f docker-compose-haproxy.yml down
docker-compose -f docker-compose-haproxy.yml build
docker-compose -f docker-compose-haproxy.yml up -d wrk1
sleep 2
docker-compose -f docker-compose-haproxy.yml up -d wrk2
sleep 2
docker-compose -f docker-compose-haproxy.yml up -d wrk3
