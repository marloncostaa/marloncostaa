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
minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u bravulasco@gmail.com -p x
