# linux_script

## miner_xmr.sh

### 功能
Centos 挖矿程序。 运行脚本自动以cpu算力挖取xmr(门罗币)。若在云主机或者VPS上运行该程序，记得使用cpulimit限制CPU利用率。cpu利用率持续占用100%会被服务提供商监控

### 使用方法

./miner_xmr.sh
注意：修改xmr钱包地址

## initd.sh

### 功能

Ubuntu18.04+ startup script. 开机启动脚本

### 使用方法

./initd.sh "..."

...为需要开机启动的命令

## install_shadowsocks.sh

### 功能

Centos install shadowsocks. Centos安装shadowsocks，用于科学上网

### 使用方法

sudo ./install_shadowsocks.sh
本脚本直接启动ssserver，需要在手机电脑等终端下载shadowsocks或者shadowsocks R，填入服务器/etc/shadowsocks.json配置文件中的配置，方可使用

注意： 请设置服务器的防火墙规则，打开所有端口（或者配置文件中开启的端口）入站允许。
