#!/bin/sh
docker-compose -f docker-compose-nginx.yml logs wrk1
docker-compose -f docker-compose-nginx.yml logs wrk2
docker-compose -f docker-compose-nginx.yml logs wrk3
docker-compose -f docker-compose-nginx.yml logs wrk4
docker-compose -f docker-compose-nginx.yml logs wrk5
docker-compose -f docker-compose-nginx.yml logs wrk6
docker-compose -f docker-compose-nginx.yml logs wrk7
docker-compose -f docker-compose-nginx.yml logs wrk8
