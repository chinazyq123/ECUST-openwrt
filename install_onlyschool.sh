#!/bin/sh

# 更新软件包列表
opkg update

# 安装luci-app-mwan3
opkg install luci-app-mwan3

# 下载配置文件
wget -O /etc/config/mwan3 https://gitee.com/chinazyq/ECUST-openwrt/raw/master/mwan3_onlyschool

# 重新启动mwan3服务
/etc/init.d/mwan3 restart
