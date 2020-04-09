#!/bin/sh
docker-compose -f docker-compose-haproxy.yml logs wrk1
docker-compose -f docker-compose-haproxy.yml logs wrk2
docker-compose -f docker-compose-haproxy.yml logs wrk3
docker-compose -f docker-compose-haproxy.yml logs wrk4
docker-compose -f docker-compose-haproxy.yml logs wrk5
docker-compose -f docker-compose-haproxy.yml logs wrk6
docker-compose -f docker-compose-haproxy.yml logs wrk7
docker-compose -f docker-compose-haproxy.yml logs wrk8
