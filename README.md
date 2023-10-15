# ECUST-openwrt
<a href='https://github.com/chinazyq123/ECUST-openwrt'><img alt="GitHub stars" src="https://img.shields.io/github/stars/chinazyq123/ECUST-openwrt?logo=github"></a>
[![Gitee stars](https://gitee.com/chinazyq/ECUST-openwrt/badge/star.svg?theme=dark)](https://gitee.com/chinazyq/ECUST-openwrt)  
用openwrt mwan3实现ECUST校园网、宽带按IP段分流（V6流量全走校园网，V4流量分两种）

# 前置准备
见[wiki](https://gitee.com/chinazyq/ECUST-openwrt/wikis/%E5%89%8D%E7%BD%AE%E5%87%86%E5%A4%87)

# 分步安装
1.教育网cernet、校内地址走校园网，其它走宽带
```
# 更新软件包列表
opkg update
```
```
# 安装luci-app-mwan3
opkg install luci-app-mwan3
```
```
# 下载配置文件
wget -O /etc/config/mwan3 https://gitee.com/chinazyq/ECUST-openwrt/raw/master/mwan3
```
```
# 重新启动mwan3服务
/etc/init.d/mwan3 restart
```
2.仅校内地址走校园网，其它走宽带
```
# 更新软件包列表
opkg update
```
```
# 安装luci-app-mwan3
opkg install luci-app-mwan3
```
```
# 下载配置文件
wget -O /etc/config/mwan3 https://gitee.com/chinazyq/ECUST-openwrt/raw/master/mwan3_onlyschool
```
```
# 重新启动mwan3服务
/etc/init.d/mwan3 restart
```

# 一键安装（新版本似乎已失效，还是手动分步安装吧）
1.教育网cernet、校内地址走校园网，其它走宽带
```
#使用curl安装
export url='https://gitee.com/chinazyq/ECUST-openwrt/raw/master' && sh -c "$(curl -kfsSl $url/install.sh)" && source /etc/profile &> /dev/null
```
```
#使用wget安装
export url='https://gitee.com/chinazyq/ECUST-openwrt/raw/master' && wget -q --no-check-certificate -O /tmp/install.sh $url/install.sh  && sh /tmp/install.sh && source /etc/profile &> /dev/null
```
2.仅校内地址走校园网，其它走宽带
```
#使用curl安装
export url='https://gitee.com/chinazyq/ECUST-openwrt/raw/master' && sh -c "$(curl -kfsSl $url/install_onlyschool.sh)" && source /etc/profile &> /dev/null
```
```
#使用wget安装
export url='https://gitee.com/chinazyq/ECUST-openwrt/raw/master' && wget -q --no-check-certificate -O /tmp/install_onlyschool.sh $url/install_onlyschool.sh  && sh /tmp/install_onlyschool.sh && source /etc/profile &> /dev/null
```

## 说明
IP文件夹中的IP段具有时效性，不保证也不可能长期有效  
第一种情况，部分CDN解析出的教育网地址也会走校园网而遭到限速  
第二种情况，部分教育网站（例如四六级报名网站）宽带访问延迟可能增加  
自行权衡利弊
