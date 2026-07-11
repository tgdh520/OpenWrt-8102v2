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

sed -i '317s/GMT0/CST-8/g' package/base-files/files/bin/config_generate
sed -i '318s|UTC|Asia/Shanghai|g' package/base-files/files/bin/config_generate
sed -i '166s|192.168.1.1|10.0.0.1|g' package/base-files/files/bin/config_generate
sed -i '167s|192.168|10.0|g' package/base-files/files/bin/config_generate
#默认开启Wifi
#sed -i '115s|disabled='0'|enabled='1'|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
#修改默认Wifi名称
sed -i '112s|ImmortalWrt|ZBT8102|g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
#修改防火墙默认配置
sed -i '3s|REJECT|ACCEPT|g' package/network/config/firewall/files/firewall.config
sed -i '5s|REJECT|ACCEPT|g' package/network/config/firewall/files/firewall.config
sed -i '6s|1|0|g' package/network/config/firewall/files/firewall.config
sed -i '7s|1|0|g' package/network/config/firewall/files/firewall.config
sed -i '22s|REJECT|ACCEPT|g' package/network/config/firewall/files/firewall.config
sed -i '24s|REJECT|ACCEPT|g' package/network/config/firewall/files/firewall.config

#mkdir -p package/base-files/files/etc/uci-defaults/
#touch package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo '#!/bin/sh' > package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "# 遍历所有无线设备并将其设置为启用状态" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "uci -q batch <<EOF" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "  set wireless.@wifi-device[0].disabled='0'" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "  set wireless.@wifi-device[1].disabled='0'" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "  set wireless.@wifi-iface[0].disabled='0'" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "  set wireless.@wifi-iface[1].disabled='0'" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "  commit wireless" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo "EOF" >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo >> package/base-files/files/etc/uci-defaults/99-enable-wifi
#echo 'exit 0' >> package/base-files/files/etc/uci-defaults/99-enable-wifi 
#chmod +x package/base-files/files/etc/uci-defaults/99-enable-wifi
