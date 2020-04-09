#!/bin/sh
docker rm -f nginx1
#docker network rm br-1 br-2 br-3 br-4
#docker network create br-1 && docker network create br-2 && docker network create br-3 && docker network create br-4
docker create --net br-1 --name nginx1 web_benchmark_nginx1
docker network connect br-2 nginx1
docker network connect br-3 nginx1
docker network connect br-4 nginx1
docker start nginx1
docker exec -i nginx1 ifconfig
