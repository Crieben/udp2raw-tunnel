ccmips=mips-openwrt-linux-g++
all:
	killall raw||true
	sleep 1
	g++ main.cpp -o raw -static -lrt -ggdb -I. aes.c md5.c encrypt.cpp log.cpp -O3  -std=c++11
	${ccmips} -O3 main.cpp -o rawmips  -lrt   -I. aes.c md5.c encrypt.cpp log.cpp -std=c++11


