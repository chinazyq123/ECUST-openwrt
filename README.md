# ECUST-openwrt
用openwrt mwan3实现ECUST校园网、宽带按IP段分流（V6流量全走校园网，教育网cernet、校内地址走校园网，其它走宽带）

# 一键安装
```
wget -O install.sh https://github.com/chinazyq123/ECUST-openwrt/raw/main/install.sh && chmod +x install.sh && ./install.sh
```
## 说明
由于部分CDN解析出的教育网地址也会走校园网而遭到限速，可以通过避免使用ipv6解析服务器或者使用学习解析服务器解决（一般不需要进行任何操作）
