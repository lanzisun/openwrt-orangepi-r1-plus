# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)

A template for building OpenWrt with GitHub Actions

Details reference ：[P3terx Zone](https://p3terx.com/archives/build-openwrt-with-github-actions.html)


## 此编译版本仅适用香橙派R1 Plus(Orange-pi r1 plus) 

### 详细配置如下：

#### 硬件架构

```shell
Target System ---> Rockchip
Target Profile ---> xunlong orange pi R1 Plus
Target Images ---> Root filesystem partition size (512)
```

#### 常用插件列表

```shell
## 插件类
LuCI ---> Applications ---> luci-app-adblock   #去广告
LuCI ---> Applications ---> luci-app-aliddns   #阿里DDNS客户端
LuCI ---> Applications ---> luci-app-aliyundrive-webdav   #阿里云盘客户端
LuCI ---> Applications ---> luci-app-argon-config #Argon主题设置
LuCI ---> Applications ---> luci-app-attendedsysupgrade #
LuCI ---> Applications ---> luci-app-ddns   #动态域名 DNS
LuCI ---> Applications ---> luci-app-dnsfilter #广告过滤
LuCI ---> Applications ---> luci-app-eqos #根据IP控制网速
LuCI ---> Applications ---> luci-app-fileassistant  #文件助手
LuCI ---> Applications ---> luci-app-firewall   #添加防火墙
LuCI ---> Applications ---> luci-app-frpc   #内网穿透 Frp
LuCI ---> Applications ---> luci-app-jd-dailybonus #京东签到自动领豆
LuCI ---> Applications ---> luci-app-openclash #你懂的那只猫
LuCI ---> Applications ---> luci-app-passwall #不敢解释
LuCI ---> Applications ---> luci-app-mwan3   #MWAN负载均衡
LuCI ---> Applications ---> luci-app-nlbwmon   #网络带宽监视器
LuCI ---> Applications ---> luci-app-samba   #网络共享(Samba)
LuCI ---> Applications ---> luci-app-ttyd #终端命令行工具
LuCI ---> Applications ---> luci-app-uhttpd #LuCI Http webserver 配置
LuCI ---> Applications ---> luci-app-unblockneteasemusic  #去除网易音乐灰标
LuCI ---> Applications ---> luci-app-upnp   #通用即插即用UPnP(端口自动转发)
LuCI ---> Applications ---> luci-app-watchcat #断网检测功能与定时重启
LuCI ---> Applications ---> luci-app-wol   #WOL网络唤醒

LuCI ---> Collections ---> luci  #LuCI http webserver

LuCI ---> Protocols ---> luci-proto-ipv5
LuCI ---> Protocols ---> luci-proto-ppp 

# 常用主题类
LuCI ---> Themes ---> luci-theme-argon

# 网络相关 (普通用户用不上）
Network ---> IP Addresses and Names ---> ddns-scripts_cloudflare.com-v4
Network ---> IP Addresses and Names --->  bind-dig
Network ---> Routing and Rediction ---> ip-full
Network ---> File Transfer ---> curl
Network ---> File Transfer ---> wget-ssl
Network ---> iperf3
Network ---> ipset
Network ---> socat #多功能的网络工具
Network ---> VPN ---> zerotier #虚拟局域网
Base system --> dnsmasq-full  #DNS缓存和DHCP服务（dnsmasq-full和dnsmasq二者不可共存）

# 工具类
Utilities --> Shells --> bash #命令解释程序
Utilities --> disc --> fdisk #MBR分区工具
Utilities --> disc --> gdisk #GBT分区工具
Utilities --> disc --> lsblk #列出磁盘设备及分区查看工具
Utilities --> Filesystem --> resize2fs #调整文件系统大小

# IPv6
Network ---> odhcp6c
Network ---> odhcpd-ipv6only

```

## Usage

- Generate `.config` files using [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository.
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## Credits

- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE)
