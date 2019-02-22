#!/usr/bin/env bash

echo "~ Installing java 8 ~"
#install java
sudo apt update
sudo apt-get install openjdk-8-jdk -y

echo "~ Installing jenkins ~"
#install jenkins:2.105.3 
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins=2.150.3 -y
