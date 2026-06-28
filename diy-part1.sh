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
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

# Add a feed source
#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >> feeds.conf.default
echo 'src-git qmodem https://github.com/FUjr/QModem.git;main' >> feeds.conf.default

sed -i '44s|EXTRA_CFLAGS|ccflags-y|g' feeds/qmodem/driver/fibocom_QMI_WWAN/Makefile
sed -i '39s|EXTRA_CFLAGS|ccflags-y|g' feeds/qmodem/driver/quectel_MHI/Makefile
sed -i '43s|EXTRA_CFLAGS|ccflags-y|g' feeds/qmodem/driver/quectel_QMI_WWAN/Makefile
sed -i '43s|EXTRA_CFLAGS|ccflags-y|g' feeds/qmodem/driver/simcom_QMI_WWAN/Makefile
