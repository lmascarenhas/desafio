#!/bin/bash
set -e -x

yum update -y
pip install ansible
cd /root/ && git clone https://github.com/jenkinsci/docker.git
cd /root/docker
sed -i 's/\/var\/jenkins_home/\/var\/jenkins_home:\/var\/jenkins_home/' docker-compose.yml
mkdir -p /var/jenkins_home
chmod 777 /var/jenkins_home
docker-compose up -d --build