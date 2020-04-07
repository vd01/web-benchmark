#!/bin/sh
docker-compose -f docker-compose-nginx.yml exec nginx1 netstat -antp | grep EST | wc
