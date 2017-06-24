apt-get install autoconf autogen -y
apt-get update -y
sudo apt-get install git make automake gcc screen libcurl4-openssl-dev -y
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure --disable-aes-ni
make
./minerd -a cryptonight -o stratum+tcp://cryptonight.br.nicehash.com:3355 -u 3Djurb9hE3jxx3x4ZKePs6uZRodS71kqQg.linux -p x
