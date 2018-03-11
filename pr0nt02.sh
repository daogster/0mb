#!/bin/bash
	sudo apt-get update 
	sudo apt-get install git build-essential cmake libuv1-dev nvidia-cuda-dev nvidia-cuda-toolkit libmicrohttpd-dev
	git clone https://github.com/daogster/xmrig.git
	cd xmrig-nvidia
    mkdir build
    cd build
    cmake .. -DCUDA_ARCH="20;30;50"
	make
	echo "FINISHED BUILDING..."
	echo "NOW RUNNING..."
    bash ./xmrig-nvidia -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k