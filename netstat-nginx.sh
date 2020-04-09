#!/bin/sh
docker-compose -f docker-compose-nginx.yml exec nginx1 netstat -s | grep "connections established"
