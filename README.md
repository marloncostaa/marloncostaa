apt-get install autoconf autogen

apt-get update

sudo apt-get install git make automake gcc screen libcurl4-openssl-dev

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni

make

./minerd -a cryptonight -o stratum+tcp://mro.pool.minergate.com:45560 -u tigdav2004@mail.ru -p x -t Количество потоков(ядер) - для Minergate
