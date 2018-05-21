#!bin/bash/
sudo apt-get update
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda
sudo apt-get install cuda-toolkit-8-0
sudo apt-get install git cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nanopool/nheqminer.git
cd nheqminer/Linux_cmake/nheqminer_cuda_tromp && cmake . && make -j $(nproc)
bash ./nheqminer -l stratum+ssl://equihash.usa.nicehash.com:33357 -u 15NPiPA35Cxciwf5uTAK9Dz7AXAzcpLBxW.robxg -t 6 -cd 0 1
