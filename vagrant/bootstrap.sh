#!/usr/bin/env bash

# Initial update and install git
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/source.list.d/docker.list
sudo apt-get update -y
sudo apt-get install -y docker-engine npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo service docker start

# Build back-end docker
cd /vagrant/back
sudo docker build -t caffe-emotiw .

# Run back-end docker
sudo docker run -p 5000:5000 caffe-emotiw

# Build front-end
cd /vagrant/front
npm install

# Run front-end server
npm start
