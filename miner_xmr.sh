#!/bin/bash

yum -y update; yum -y install wget git epel-release; wget https://github.com/fireice-uk/xmr-stak/releases/download/2.7.1/xmr-stak-linux-2.7.1-cpu.tar.xz; xz -d xmr-stak-linux-2.7.1-cpu.tar.xz; tar -xvf xmr-stak-linux-2.7.1-cpu.tar; cd xmr-stak-linux-2.7.1-cpu/

./xmr-stak -O xmr-asia1.nanopool.org:14433 -u 4Ap14sqJYxfbS18WagiUFzUFq8STnFtQf4LY9s9rs4AKR9g4YPJ4RLeckfJ9DDvdznJxHVre1BSkrVP9x82GoK9o3uQhe14.google01/773216251@qq.com --currency monero -i 0 -p "" -r ""

echo "cd ~/xmr-stak-linux-2.7.1-cpu/" >> /etc/rc.local
echo "./miner_xmr.sh" >> /etc/rc.local
