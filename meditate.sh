#!/bin/bash
	sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
	git clone https://github.com/daogster/xmrig.git
	cd xmrig
	mkdir build
	cd build
	cmake ..
	make
	echo "FINISHED BUILDING..."
	echo "NOW RUNNING..."
	.xmrig-proxy -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p greenXhouse --bind 0.0.0.0:3333 --bind 0.0.0.0:5555 
	# ./xmrig -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k
