#!/bin/sh
docker-compose -f docker-compose-haproxy.yml exec haproxy1 netstat -s | grep "connections established"
