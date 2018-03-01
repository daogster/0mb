#!/bin/bash
# update install run & report
 sudo apt-get update
 sudo apt-get install cmake build-essential libboost-all-dev
 git clone -b Linux https://github.com/daogster/nheqminer.git
 cd nheqminer
 cd cpu_xenoncat
 cd Linux
 cd asm
 sh assemble.sh
 mkdir build && cd build
 cmake ../nheqminer
 make -j $(nproc)
 bash ./nheqminer -l us1-zcash.flypool.org:3333 -u t1Un5ELCTVgHZ6s2P4WaSUna4rXcsVnQdNm.p0t1


