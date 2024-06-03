#!/bin/bash

docker volume create haproxy-etc

docker build -t iPLON-Load-Balancing-Service:1.0 .

sleep 10;

docker run -d --name iPLON-HAProxy --network influxdb-net -v haproxy-etc:/usr/local/etc/haproxy/ -p 8088:8088 itd iPLON-Load-Balancing-Service:1.0
