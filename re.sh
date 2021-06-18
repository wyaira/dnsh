#!/bin/bash

iptables -F

log='/var/log/iptables.log'

time=$(date "+%Y年%m月%d日 %H:%M:%S")
echo '' >> $log
echo ----------$time 执行结果---------- >> $log
echo '' >> $log


#定义IP列表
iplist=(
8.8.8.8/24
1.1.1.1/24
23.97.67.163/24
)

for ip in ${iplist[*]};do
	iptables -A INPUT -s ${ip} -p udp --dport 53 -j ACCEPT
	iptables -A INPUT -s ${ip} -p tcp --dport 53 -j ACCEPT
	iptables -A INPUT -s ${ip} -p udp --dport 80 -j ACCEPT
	iptables -A INPUT -s ${ip} -p tcp --dport 80 -j ACCEPT
	iptables -A INPUT -s ${ip} -p udp --dport 443 -j ACCEPT
	iptables -A INPUT -s ${ip} -p tcp --dport 443 -j ACCEPT
	sleep 0.05s
	echo ${ip} Netflix解锁IP白名单已设置完成 >> $log
done

iptables -A INPUT -p udp --dport 53 -j DROP
iptables -A INPUT -p tcp --dport 53 -j DROP
iptables -A INPUT -p udp --dport 80 -j DROP
iptables -A INPUT -p tcp --dport 80 -j DROP
iptables -A INPUT -p udp --dport 443 -j DROP
iptables -A INPUT -p tcp --dport 443 -j DROP

echo '所有IP已设置完成，请查看' $log
