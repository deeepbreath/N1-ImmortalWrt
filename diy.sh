#!/bin/bash

# 添加 nikki feed
# grep -qF 'src-git nikki' feeds.conf.default || \
# echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> feeds.conf.default

# 更新 feeds（第一次）
./scripts/feeds update -a

# 克隆自定义包
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic || true
git clone --depth=1 https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman.git package/luci-app-podman || true
git clone --depth=1 https://github.com/QiuSimons/luci-app-daed package/luci-app-daed || true
git clone --depth=1 https://github.com/kenzok8/openwrt-daede package/openwrt-daede || true
git clone --depth=1 https://istore.istoreos.com/repo-apk/all/store package/luci-app-store || true
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon || true
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-app-argon-config || true
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-i18n-argon-config-zh-cn || true


# 安装 feeds
./scripts/feeds install -a
