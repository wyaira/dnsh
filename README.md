# dnsh
ADME.md
编辑未完成，图片文字排版更新中。
21.6.17更新要点：
针对甲骨文云ubuntu系统，对代理脚本（例：mack-a脚本）加入全端口的临时开启，重启VPS实例自动还原初始设置！

21.6.15更新要点：
加入对Xen(亚马逊云Aws)与Microsoft(微软云Azure)架构的支持！

21.6.14更新要点：
优化安装逻辑（解决每次进脚本都要检验依赖问题），优化WGCF账户申请成功率！

21.6.13更新要点：
1、加入Centos/Debain系统的支持

2、自动识别系统，且无须手动输入IP地址

更新已测试通过的VPS名单
 已支持：oracle（甲骨文云），gpc（谷歌云），buyvm，racknerd，aws（亚马逊云），azure（微软云），bandwagonhost（搬瓦工）………………欢迎大家补充反馈………
提醒：
1、OpenVZ、LXC架构的VPS并不集成在此脚本中。

2、内核必须5.6以上，脚本自带稳定版内核升级功能。

OpenVZ、LXC架构VPS脚本:EUserv 纯ipv6(OpenVZ、LXC架构VPS)WARP项目后续也将更新IPV4的相关支持。
针对KVM架构VPS的WARP一键综合脚本
 支持自动识别X86与ARM的CPU架构
 支持 纯IPV4 VPS
 支持 IPV4+IPV6双栈VPS
 支持 纯IPV6 VPS（目前仅Ubuntu后续会更新）
 支持 Ubuntu/Centos/Debain系统！！！
d89ed915a4e612e87946206873184a8

目录
root一键脚本

vps的ip套上warp功能的优势及不足

warp多功能一键脚本

warp多功能一键脚本各功能简析

自定义ip分流配置模板说明

相关附加说明

相关视频教程及项目
纯IPV4 VPS添加WARP 如何查看专用IP地址
甲骨文添加真IPV6，如何选择WARP脚本看奈非
EUserv 纯ipv6(OpenVZ、LXC架构VPS)WARP项目
root一键脚本
用户名：root，密码自定义。方便登录与编辑文件！！后续再次执行脚本意味着更改root密码！！

提示：密码不要设置得过于简单，容易被破解。密钥文件要保存好，以防万一！

脚本一：适用于纯IPV4 VPS与IPV4+IPV6双栈VPS，非root状态下直接输入以下脚本（支持甲骨文与谷歌云）
bash <(curl -sSL https://raw.githubusercontent.com/YG-tsj/CFWarp-Pro/main/root.sh)
脚本二：适用于纯IPV6 VPS，先执行sudo -i进入root模式后再输入以下脚本（已集成永久DNS64）
echo -e nameserver 2a00:1098:2c::1 > /etc/resolv.conf && bash <(curl -sSL https://raw.githubusercontent.com/YG-tsj/CFWarp-Pro/main/v6root.sh)
vps的ip套上warp功能的优势及不足
给纯IPV4/纯IPV6 VPS添加WARP的好处
给IPV4+IPV6双栈VPS添加WARP的好处
不稳定或者不足点
warp多功能一键脚本
脚本一：支持X86/ARM架构的纯IPV4 VPS与IPV4+IPV6双栈VPS
wget -N --no-check-certificate https://cdn.jsdelivr.net/gh/YG-tsj/CFWarp-Pro/multi.sh && chmod +x multi.sh && ./multi.sh
进入脚本快捷方式 bash multi.sh

脚本二：支持X86/ARM架构的纯IPV6 VPS

如未执行上面的root一键脚本，先执行sudo -i进入root模式，后执行echo -e nameserver 2a00:1098:2c::1 > /etc/resolv.conf

wget -N --no-check-certificate https://raw.githubusercontent.com/YG-tsj/CFWarp-Pro/main/multiOV6.sh && chmod +x multiOV6.sh && ./multiOV6.sh
纯IPV6建议后续只用快捷方式进入脚本 bash multiOV6.sh

warp多功能一键脚本各功能简析
一、开启甲骨文VPS所有端口（甲骨文专用，务必选择）：
解决代理协议申请证书发生Nginx等相关报错问题，完成后将自动断开VPS连接！

二、更新系统内核：
因为5.6版本以上内核才集成Wireguard，内核集成方案在理论上网络效率最高！（网络性能：内核集成>内核模块>Wireguard-Go）

而网络上很多项目大多都为“内核模块”方案。所以本项目就来pro版的，后续随着VPS厂商对系统的升级，内核集成必定是主流。

自动检测内核版本功能已集成于5-10脚本中，5.6以下内核将自动终止脚本运行并提示升级内核！

更新完成后将自动断开VPS连接！

三、开启原生BBR加速：
检测原生BBR是否生效，最后显示有tcp_bbr字样，说明成功。

四、奈非Netflix检测(sjlleo版)：
支持IPV4/IPV6检测，结果非常详细。

4f396307256bfefd7c92d6f667fea45

五、安装WARP脚本

（仅支持 纯IPV4 VPS）

脚本5、结果表现为2个IP：VPS本地IPV4+WARP虚拟IPV6

脚本6、结果表现为3个IP：VPS本地IPV4+WARP虚拟IPV4+WARP虚拟IPV6

脚本7、结果表现为2个IP：VPS本地IPV4+WARP虚拟IPV4

（仅支持IPV4+IPV6双栈VPS）
脚本8、结果表现为3个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV6

脚本9、结果表现为4个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV6+WARP虚拟IPV4

脚本10、结果表现为3个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV4

（仅支持 纯IPV6 VPS）
脚本5、结果表现为3个IP：VPS本地IPV6+WARP虚拟IPV6+WARP虚拟IPV4

脚本6、结果表现为2个IP：VPS本地IPV6+WARP虚拟IPV4

目前（VPS本地IPV6+WARP虚拟IPV6，无IPV4）这种形式的应用应该不多吧，日后会加上。

六、永久关闭WARP功能：
作用1：永久关闭WARP分配的虚拟IP，还原当前VPS的本地IP。

作用2：如之前已安装了一种WARP方案，现更换另一种WARP方案，请先关闭WARP功能，再执行安装WARP脚本。

七、启动并开机自启WARP功能：
作用：永久关闭WARP功能后的再次启用。

因WARP脚本默认集成该功能，所以脚本安装成功后不必再执行该项。

**八、查看warp当前的运行状态
显示Active: active (exited)绿色：开启

显示Active: inactive (dead)黑色：关闭

显示Active：failed 红色：安装失败

九、查看当前VPS的IPV4/IPV6地址：
