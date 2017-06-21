apt-get update
apt-get install libcurl4-openssl-dev git build-essential
apt-get install autotools-dev autoconf libcurl3 libcurl4-gnutls-dev
mkdir /downloads
cd /downloads
git clone https://github.com/pooler/cpuminer
cd cpuminer
./autogen.sh
CFLAGS="-march=native" ./configure
make
make install
minerd -o stratum+tcp://btc.pool.minergate.com:3335 -u virtualcoin.videos@gmail.com -p x
