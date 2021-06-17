#!/bin/sh
mv /etc/resolv.conf /etc/resolv.bak
touch /etc/resolv.conf
echo -e "nameserver 3.33.233.112\nnameserver 8.8.8.8\nnameserver 2001:4860:4860::8888" > /etc/resolv.conf
echo "Netflix解锁（jp）已设置完成。本机IP："
curl ifconfig.me
echo ""
echo "请将本机IP地址反馈给我添加授权即可完成解锁。"
