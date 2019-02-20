#!/usr/bin/env bash

echo "~ Installing Docker ~"
#install Docker
sudo snap install docker

echo "~ Installing Docker-compose ~"
#install Docker-compose
sudo apt-get install docker-compose -y

echo "~ Installing java 8 ~"
#install java
sudo apt update
sudo apt-get install openjdk-8-jdk -y

echo "~ Installing jenkins ~"
#install jenkins:2.107.3-alpine 
docker pull jenkins/jenkins:lts