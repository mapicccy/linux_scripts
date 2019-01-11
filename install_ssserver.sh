#!/bin/bash

yum -y update
yum -y install epel-release
yum -y install python-pip git
pip install git+https://www.github.com/shadowsocks/shadowsocks@master
touch /etc/shadowsocks.json

echo '{
    "server":"0.0.0.0",
    "server_port":21574,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"19911156",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}' > /etc/shadowsocks.json

ssserver -c /etc/shadowsocks.json -d start

