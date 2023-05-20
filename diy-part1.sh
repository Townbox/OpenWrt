#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/^#\(.*kenzo\)/\1/' feeds.conf.default
sed -i 's/^#\(.*small\)/\1/' feeds.conf.default
sed -i 's/^#\(.*lienol\)/\1/' feeds.conf.default
sed -i 's/^#\(.*packages\)/\1/' feeds.conf.default
sed -i 's/^#\(.*luci\)/\1/' feeds.conf.default
sed -i 's/^#\(.*routing\)/\1/' feeds.conf.default
sed -i 's/^#\(.*telephony\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small-package' >>feeds.conf.default
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >>feeds.conf.default

echo 'src-git packages https://github.com/immortalwrt/packages' >>feeds.conf.defaul
echo 'src-git luci https://github.com/immortalwrt/luci' >>feeds.conf.defaul
echo 'src-git routing https://github.com/openwrt/routing' >>feeds.conf.defaul
echo 'src-git telephony https://github.com/openwrt/telephony' >>feeds.conf.defaul
