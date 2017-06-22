apt-get install autoconf autogen
apt-get update
sudo apt-get install git make automake gcc screen libcurl4-openssl-dev
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure --disable-aes-ni
make
./minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u bravulasco@gmail.com -p x
