#!/bin/bash

TOLEAVE=centos

docker ps -a
for p in $(docker ps -a |grep -v CONTAINER | awk '{ print $1 }') ; do docker stop $p ; done
for p in $(docker ps -a |grep -v CONTAINER | awk '{ print $1 }') ; do docker rm $p ; done
docker ps -a
docker images
for i in $(docker images |grep -v $TOLEAVE |grep -v SIZE | awk '{ print $3 }') ; do docker rmi $i ; done
docker images
