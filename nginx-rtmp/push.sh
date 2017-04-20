#!/bin/bash


docker build -t nginx-rtmp  .
docker tag nginx-rtmp  hub.c.163.com/ychdev/nginx-rtmp
docker push hub.c.163.com/ychdev/nginx-rtmp