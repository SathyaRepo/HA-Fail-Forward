#!/bin/bash

docker volume create haproxy-etc
docker run -d --name iPLON-HAProxy --network influxdb-net -v haproxy-etc:/usr/local/etc/haproxy/ -p 8088:8088 my-haproxy
