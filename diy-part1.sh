#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#sed -i '317s/GMT0/CST-8/g' package/base-files/files/bin/config_generate
#sed -i '318s|UTC|Asia/Shanghai|g' package/base-files/files/bin/config_generate
#sed -i '166s|192.168.1.1|10.0.0.1|g' package/base-files/files/bin/config_generate
#sed -i '167s|192.168|10.0|g' package/base-files/files/bin/config_generate
#默认开启Wifi
sed -i '115s|0 : 1|1 : 0|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
#修改默认Wifi名称
sed -i '112s|OpenWrt|ZBT8102|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
echo 'src-git qmodem https://github.com/FUjr/QModem.git;main' >> feeds.conf.default
