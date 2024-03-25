#!/bin/bash

docker pull sickp/alpine-redis
docker network create redis_network
docker run --rm --network=redis_network --name=redis-server sickp/alpine-redis
docker run --rm --net=redis_network -it sickp/alpine-redis redis-cli -h redis-server