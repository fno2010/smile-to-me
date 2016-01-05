#!/usr/bin/env bash

cd /home/vagrant/petuum

# Build strads
cd strads
make

# Uncomment to enable bosen module
#
# Build bosen with third_party
#
cd ../bosen/third_party
make
cd ../../bosen
cp defns.mk.template defns.mk
make
cd ..

# Uncomment to enable poseidon module
#
# Build poseidon with third_party
#
#cd ../poseidon/third_party
#make
#cd ../ps
#make
#cd ..
#sh scripts/setup_third_party.sh
#cp Makefile.config.example Makefile.config
#make
