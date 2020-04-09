#!/bin/sh
cp ./scripts/delay-20s.lua ./wrk-nginx/script.lua
docker-compose -f docker-compose-nginx.yml down
docker-compose -f docker-compose-nginx.yml build
docker-compose -f docker-compose-nginx.yml up -d nginx1
sleep 5
docker-compose -f docker-compose-nginx.yml up -d wrk1
sleep 2
docker-compose -f docker-compose-nginx.yml up -d wrk2
sleep 1
docker-compose -f docker-compose-nginx.yml up -d wrk3
sleep 1
docker-compose -f docker-compose-nginx.yml up -d wrk4
sleep 1
docker-compose -f docker-compose-nginx.yml up -d wrk5
sleep 1
docker-compose -f docker-compose-nginx.yml up -d wrk6
