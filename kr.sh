#!/bin/sh
mv /etc/resolv.conf /etc/resolv.bak
touch /etc/resolv.conf
echo -e "nameserver 193.123.225.92\nnameserver 8.8.8.8" > /etc/resolv.conf
echo "Netflix解锁（韩国）已设置完成。本机IP："
curl ifconfig.me
echo ""
echo "请将本机IP地址反馈给我添加授权即可完成解锁。"
