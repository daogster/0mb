#!/bin/bash
sudo apt-get update
sudo apt-get install git cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nanopool/nheqminer.git
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
bash ./nheqminer -l zec-us-east1.nanopool.org:6666 -u t1bNUhf69B1ThBcrBBpDamBwHu34Zix58uR/robxg/hightechchi@gmail.com -t 6 -cd 0 1
