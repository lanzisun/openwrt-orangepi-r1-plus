#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# AutoCore
# svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/emortal/autocore package/lean/autocore
# rm -rf ./feeds/packages/utils/coremark
# svn co https://github.com/immortalwrt/packages/trunk/utils/coremark feeds/packages/utils/coremark

# libernet
git clone https://github.com/helmiau/helmiwrt-packages.git package/new/libernet

# kengzo
git clone https://github.com/kenzok8/openwrt-packages package/new/kengzo
git clone https://github.com/kenzok8/small package/new/small

# php7
git clone https://github.com/kea/openwrt-php7-package.git package/new/php7

# Autocore Stb
git clone https://github.com/MatJehey/autocore-arm-x86.git package/new/luci-app-autocore

# Bypass
git clone https://github.com/kiddin9/openwrt-bypass.git package/new/luci-app-bypass
