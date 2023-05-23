# ECUST-openwrt
<a href='https://github.com/chinazyq123/ECUST-openwrt'><img alt="GitHub stars" src="https://img.shields.io/github/stars/chinazyq123/ECUST-openwrt?logo=github"></a>
[![Gitee stars](https://gitee.com/chinazyq/ECUST-openwrt/badge/star.svg?theme=dark)](https://gitee.com/chinazyq/ECUST-openwrt)  
用openwrt mwan3实现ECUST校园网、宽带按IP段分流（V6流量全走校园网，V4流量分两种）

# 一键安装
1.教育网cernet、校内地址走校园网，其它走宽带
```
wget -O install.sh https://gitee.com/chinazyq/ECUST-openwrt/raw/master/install.sh && chmod +x install.sh && ./install.sh
```
2.仅校内地址走校园网，其它走宽带
```
wget -O install.sh https://gitee.com/chinazyq/ECUST-openwrt/raw/master/install.sh && chmod +x install.sh && ./install.sh
```
## 说明
IP文件夹IP段具有时效性，不保证也不可能长期有效  
第一种情况，部分CDN解析出的教育网地址也会走校园网而遭到限速，可以通过避免使用ipv6解析服务器或者使用学校解析服务器解决（一般不需要进行任何操作）  
第二种情况，部分教育网站（例如四六级报名网站）宽带访问延迟可能增加  
自行权衡利弊
