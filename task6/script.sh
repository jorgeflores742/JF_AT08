#!/usr/bin/env bash

echo "~ downloading jenkins ~"
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine

echo "~ preparing directions for jenkins~"
#create folder docker and jenkins_home 
mkdir docker
cd docker
mkdir jenkins_home
chmod 777 jenkins_home
cd ..

echo "~ running jenkins 2.150.3 alpine ~"
#install jenkins:2.107.3-alpine 
docker run -d -p 8080:8080 -p 50000:50000 -v "/home/ubuntu/docker/jenkins_home:/var/jenkins_home" registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine
