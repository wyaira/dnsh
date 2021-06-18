#!/bin/sh
mv /etc/resolv.conf /etc/resolv.bak
touch /etc/resolv.conf
echo -e "nameserver 128.199.180.210\nnameserver 8.8.8.8" > /etc/resolv.conf
echo "Netflix解锁（新加坡）已设置完成。本机IP："
curl ifconfig.me
echo ""
echo "请将本机IP地址反馈给我添加授权即可完成解锁。"
