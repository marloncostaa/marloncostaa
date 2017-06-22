
sudo apt update

sudo apt-get install build-essential

sudo apt-get install curl

sudo apt-get install git make automake screen libcurl4-openssl-dev

cd /opt

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni 

make

screen -S miner ./minerd -a cryptonight -o stratum+tcp://cryptonight.br.nicehash.com:3355 -u 3Djurb9hE3jxx3x4ZKePs6uZRodS71kqQg.linux -p x -t 0
