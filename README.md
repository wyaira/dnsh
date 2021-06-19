# dnsh
WGCF.SH简介

一、安装WARP脚本

①（仅支持 纯IPV4 VPS）

脚本5、结果表现为2个IP：VPS本地IPV4+WARP虚拟IPV6

脚本6、结果表现为3个IP：VPS本地IPV4+WARP虚拟IPV4+WARP虚拟IPV6

脚本7、结果表现为2个IP：VPS本地IPV4+WARP虚拟IPV4

②（仅支持IPV4+IPV6双栈VPS）

脚本8、结果表现为3个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV6

脚本9、结果表现为4个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV6+WARP虚拟IPV4

脚本10、结果表现为3个IP：VPS本地IPV4+VPS本地IPV6+WARP虚拟IPV4

③（仅支持 纯IPV6 VPS）

脚本5、结果表现为3个IP：VPS本地IPV6+WARP虚拟IPV6+WARP虚拟IPV4

脚本6、结果表现为2个IP：VPS本地IPV6+WARP虚拟IPV4

目前（VPS本地IPV6+WARP虚拟IPV6，无IPV4）这种形式的应用应该不多吧，日后会加上。

二、永久关闭WARP功能：

作用1：永久关闭WARP分配的虚拟IP，还原当前VPS的本地IP。

作用2：如之前已安装了一种WARP方案，现更换另一种WARP方案，请先关闭WARP功能，再执行安装WARP脚本。

三、启动并开机自启WARP功能：

作用：永久关闭WARP功能后的再次启用。

因WARP脚本默认集成该功能，所以脚本安装成功后不必再执行该项

**八、查看warp当前的运行状态
显示Active: active (exited)绿色：开启

显示Active: inactive (dead)黑色：关闭

显示Active：failed 红色：安装失败

九、查看当前VPS的IPV4/IPV6
