#!/bin/bash
sudo apt-get update
sudo apt-get install git
sudo apt-get -y install tmux
sudo apt-get install cmake build-essential libboost-all-dev
mkdir /downloads
cd /downloads
git clone https://github.com/feeleep75/nheqminer.git
nheqminer/nheqminer
mkdir build
cd build
cmake ..
make
