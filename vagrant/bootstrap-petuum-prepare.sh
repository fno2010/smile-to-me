#!/usr/bin/env bash

# Initial update and install git
sudo apt-get update -y
sudo apt-get install -y git

# Prepare workshop and download the source code
mkdir -p /home/vagrant/petuum
cd /home/vagrant/petuum

# Uncomment to enable bosen module
#
if ! [ -e bosen ]; then
  git clone https://github.com/petuum/bosen.git
  cd bosen
  git clone https://github.com/petuum/third_party.git
  cd ..
fi

# Uncomment to enable poseidon module
#
#if ! [ -e poseidon ]; then
#  git clone https://github.com/petuum/poseidon.git
#  cd poseidon
#  git clone https://github.com/petuum/third_party.git
#  cd ..
#fi

if ! [ -e strads ]; then
  git clone https://github.com/petuum/strads.git
fi

# Necessary packages and dependencies
sudo apt-get update -y
sudo apt-get install -y g++ make autoconf git libtool uuid-dev openssh-server cmake libopenmpi-dev openmpi-bin libssl-dev libnuma-dev python-dev python-numpy python-scipy python-yaml protobuf-compiler subversion libxml2-dev libxslt-dev zlibc zlib1g zlib1g-dev libbz2-1.0 libbz2-dev libboost-thread-dev libgoogle-perftools-dev
