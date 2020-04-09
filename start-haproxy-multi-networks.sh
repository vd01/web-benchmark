#!/bin/sh
docker rm -f haproxy1
#docker network rm br-1 br-2 br-3 br-4
#docker network create br-1 && docker network create br-2 && docker network create br-3 && docker network create br-4
docker create --net br-1 --name haproxy1 web_benchmark_haproxy1
docker network connect br-2 haproxy1
docker network connect br-3 haproxy1
docker network connect br-4 haproxy1
docker start haproxy1
docker exec -i haproxy1 ifconfig
