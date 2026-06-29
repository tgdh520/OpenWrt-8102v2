#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

#sed -i '317s/GMT0/CST-8/g' package/base-files/files/bin/config_generate
#sed -i '318s|UTC|Asia/Shanghai|g' package/base-files/files/bin/config_generate
sed -i '165s|192.168.1.1|10.0.0.1|g' package/base-files/files/bin/config_generate
sed -i '166s|192.168|10.0|g' package/base-files/files/bin/config_generate
#默认开启Wifi
sed -i '101s|0 : 1|1 : 0|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
#修改默认Wifi名称
sed -i '107s|OpenWrt|ZBT8102|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
