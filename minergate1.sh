apt-get update -y
apt-get install libcurl4-openssl-dev git -y
apt-get install build-essential -y
apt-get install autotools-dev autoconf -y
apt-get install libcurl3 libcurl4-gnutls-dev -y
mkdir /download
cd /downloads
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi 
./autogen.sh
CFLAGS="-march=native" ./configure
make
make install
minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u bravulasco@gmail.com -p x
