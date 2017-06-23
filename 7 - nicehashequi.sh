apt-get update
apt-get install libcurl4-openssl-dev git 
apt-get install build-essential 
apt-get install autotools-dev autoconf 
apt-get install libcurl3 libcurl4-gnutls-dev
mkdir /download
cd /downloads
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi 
./autogen.sh
CFLAGS="-march=native" ./configure
make
make install
minerd -a cryptonight -o stratum+tcp://equihash.hk.nicehash.com:3357 -u 3Djurb9hE3jxx3x4ZKePs6uZRodS71kqQg -p x -t 0
