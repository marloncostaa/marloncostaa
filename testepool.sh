apt-get install autoconf autogen -y
apt-get update -y
sudo apt-get install git make automake gcc screen libcurl4-openssl-dev -y
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure --disable-aes-ni
make
./minerd -a quark -o stratum+tcp://quark.mine.zpool.ca:4033 -u 78mT6C2kPTkSQo3ws4XwxbCQgZrMVmqKxN -p c=MUE


