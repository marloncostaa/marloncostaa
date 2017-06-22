sudo apt-get update -y
sudo apt-get install cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nicehash/nheqminer.git
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
./nheqminer_cpu -b
./nheqminer_cpu -l equihash.hk.nicehash.com:3357 -u 1KxZfpBeizCxHxXsge4jQcKU5PK269CgUc.work1 -t 14
