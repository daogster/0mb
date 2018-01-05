if [[ $1 == "-build" ]]; then
	sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
	git clone https://github.com/daogster/xmrig.git
	cd xmrig
	mkdir build
	cd build
	cmake ..
	make
	echo "FINISHED BUILDING..."
	exit
else
	echo "Basic CPU Mining"
	echo "	Type -solo-run "
	echo "Your config file should look like this"
	echo "	./r0b1n.sh -o <pool url:port> -u <wallet_address> -p <email/workerID> -k"
	echo
	echo " Repeat -o through -k command for multiple workers; 2-3 recommended"
fi

if [ $1 == "-solo-run" ]; then
	echo "Running miner..."
	./xmrig -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k
fi

if [ $1 == "-duo-run" ]; then
	echo "Running miner..."
		./xmrig -o us.moriaxmr.com:5555 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k -o gulf.moneroocean.stream:10032 -u 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQrJ3SiAqhgR23oWPhV -p robinXgreen -k
fi
	
