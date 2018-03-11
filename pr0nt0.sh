#!/bin/bash
sudo apt-get update 
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
git clone https://github.com/daogster/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
./xmrig -l config --donate-level 1 --max-cpu-usage 100 --cpu-priority 3 -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k
