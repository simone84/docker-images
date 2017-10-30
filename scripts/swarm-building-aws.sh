#!/bin/bash

# Remember to setup in the script:
# 1-Default Region variable;
# 2-Subnet ID variable;
# 3-VPC ID variable.
# Before to run it check if in your environment has been already setup the AWS KEYS and Default Region
# Remember to open the necessary port on the docker-machine security group autocreated (2377TCP/2376TCP/22TCP)

# if you want change MASTER1 and SLAVE2 name, just amend the 2 variables
# Same for the docker stack name (APPNAME)

# Create SWARM cluster with two nodes

MASTER1=aws1
SLAVE2=aws2
APPNAME=appname
REGION=
SUBNET=
VPC=

docker-machine create --driver amazonec2 --amazonec2-open-port 8000 --amazonec2-region $REGION --amazonec2-subnet-id $SUBNET --amazonec2-vpc-id $VPC $MASTER1
docker-machine create --driver amazonec2 --amazonec2-open-port 8000 --amazonec2-region $REGION --amazonec2-subnet-id $SUBNET --amazonec2-vpc-id $VPC $SLAVE2

IP1=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$MASTER1" "Name=instance-state-name,Values=running" --query 'Reservations[].Instances[].[PrivateIpAddress]' --output text)
IP2=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$SLAVE2" "Name=instance-state-name,Values=running" --query 'Reservations[].Instances[].[PrivateIpAddress]' --output text)

echo "The ip of the master node $MASTER1 is $IP1"
echo "The ip of the first slave $SLAVE2 is $IP2"

docker-machine ssh $MASTER1 "sudo docker swarm init --advertise-addr $IP1" > /tmp/out.txt
JOIN=$(cat /tmp/out.txt |grep 2377)
docker-machine ssh $SLAVE2 "sudo $JOIN"
rm -rf /tmp/out.txt

# Setup localhost to connect with the cluster

docker-machine env $MASTER1
eval $(docker-machine env $MASTER1)

# Deploy application stack

docker stack deploy -c docker-compose.yml $APPNAME
docker node ls
docker-machine ls
docker stack ps $APPNAME
