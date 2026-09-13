#!/bin/bash
# ============= imm仓库外的第三方插件==============
# ============= 若启用 则打开注释 ================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 考虑到istore商店的集成与否 属于高频操作 故 目前已将集成store的操作放置在 工作流的UI 选项 用户自行勾选 则集成  不勾选则不集成 以减少修改此文件的次数


# ==================== 文件管理 ====================
# 文件管理器 quickfile（sbwml，luci23 版本不支持，勿集成）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"

# 统一文件共享 unishare（webdav 共享）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES webdav2 unishare luci-app-unishare"

# 静态文件服务器 dufs（store 提供完整 run 0.46.0）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES dufs luci-app-dufs luci-i18n-dufs-zh-cn"

# 网盘聚合 openlist2（Alist 变体，sbwml）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES openlist2 luci-app-openlist2 luci-i18n-openlist2-zh-cn"


# ==================== 主题外观 ====================
# 极光主题 aurora（eamonxg）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"

# 酷猫主题 kucat（sirpdboy）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-kucat"


# ==================== 去广告 & DNS ====================
# 去广告 AdGuardHome
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"

# DNS 分流 mosdns（高性能，支持 DoH/DoQ）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES mosdns luci-app-mosdns luci-i18n-mosdns-zh-cn"


# ==================== 代理相关 ====================
# 透明代理 dae（24.10 为 dae 版本，store 提供 run，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES dae luci-app-dae luci-i18n-dae-zh-cn dae-geoip dae-geosite"

# 透明代理 daed（已更新到 1.28.0）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn"

# 代理 passwall（完整版 26.9.9，自带依赖，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall luci-i18n-passwall-zh-cn"

# 代理 passwall2（完整版 26.5.1，自带依赖，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"

# 代理 openclash（自带全部依赖，可单独开关）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"

# 代理 homeproxy（完整版 26.187，自带 sing-box 内核，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES sing-box luci-app-homeproxy luci-i18n-homeproxy-zh-cn"

# sing-box 独立内核（store 提供 run 可单独升级，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES sing-box"

# 代理 ssr-plus 新版（支持 mihomo，可单独开关）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"

# 代理 nikki
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"

# 代理 nekobox
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"

# 代理 momo
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"

# 代理 clashoo（kenzok8；与 nikki 冲突，勿同时集成）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES clashoo luci-app-clashoo luci-i18n-clashoo-zh-cn"


# ==================== VPN & 组网 ====================
# OpenVPN 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openvpn-server luci-i18n-openvpn-server-zh-cn"

# OpenVPN 客户端（语言包）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"

# WireGuard 协议支持
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"

# Tailscale 组网（Community 版）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES tailscale ip-full luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"

# 组网 easytier
CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-tun easytier luci-app-easytier luci-i18n-easytier-zh-cn"

# IPSec VPN 服务器（语言包）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"


# ==================== 网络工具 ====================
# 网络加速 Turbo ACC（集成 BBR、shortcut）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"

# 应用过滤 appfilter（openappfilter.com）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"

# 端口转发 lucky 大吉
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky"

# 集客AC gecoosac
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-gecoosac gecoosac"

# 流量监控 bandix（timsaya）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"

# IPTV 流媒体转发 rtp2httpd（stackia）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES rtp2httpd luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"


# ==================== 系统工具 ====================
# Run 安装器（与 quickfile 的 nginx 配置冲突，勿同时集成）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-run"

# 首页和网络向导 quickstart
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"

# 高级卸载 uninstall（YT Vedio Talk）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"

# 分区扩容 partexp（sirpdboy）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"

# 看门狗 watchdog（sirpdboy）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES watchdog luci-app-watchdog luci-i18n-watchdog-zh-cn"

# 进阶设置 advancedplus（sirpdboy；与 argon-config 冲突，条目内已用减号排除；issue: https://github.com/wukongdaily/ImmortalWrt-ImageBuilder/issues/521）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"

# 任务设置 taskplan
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"


#===========================以下imm仓库内的软件==============================↓

# 3Cat - 简易端口转发（基于 3proxy）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn"

# 3G/4G 上网卡 - 移动网络连接信息显示
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn"

# ACL - LuCI 账户管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn"

# ACME - SSL 证书自动申请（Let's Encrypt）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn"

# Adblock Fast - 广告拦截
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"

# Adblock - 广告拦截
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"

# 高级重启 - 支持双分区机型切换系统
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"

# AirPlay 2 - 苹果音频接收器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn"

# aMule - 电驴下载（eD2k 网络）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-amule-zh-cn"

# Aria2 - 多协议下载工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"

# ARP 绑定 - 防 ARP 欺骗
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn"

# 无人值守在线升级
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn"

# 定时重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"

# banIP - 入侵 IP 自动封禁
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn"

# 电池电量 - 状态显示
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"

# BCP38 - 反向路径过滤（防地址欺骗）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn"

# 深澜校园网 - 自动认证客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bitsrunlogin-go-zh-cn"

# BMX7 - 无线网状网络协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bmx7-zh-cn"

# 有线 802.1X 认证 - 校园网客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn"

# CIFS/SMB - 网络共享挂载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn"

# ClamAV - 杀毒软件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn"

# Cloudflared - Cloudflare Zero Trust 隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn"

# 自定义命令 - Shell 命令执行
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn"

# CoovaChilli - 强制门户（WiFi 热点认证）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn"

# cpulimit - CPU 使用率限制
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn"

# CrowdSec - 防火墙联动防护
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn"

# CloudShark - 远程抓包分析
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn"

# 仪表盘 - LuCI 首页仪表盘
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dashboard-zh-cn"

# DAWN - WiFi 漫游优化（802.11k/v）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn"

# dcwapd - 双频无线 AP 守护
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dcwapd-zh-cn"

# DDNS-Go - 动态域名解析
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"

# DDNS - 动态 DNS 客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"

# 磁盘管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn"

# DSL - 调制解调器状态监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dsl-zh-cn"

# dump1090 - ADS-B 航空信号接收（1090MHz）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn"

# DynaPoint - 动态点对点组网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn"

# 邮件通知 - EmailRelay 发送
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn"

# EoIP - 以太网隧道（MikroTik 兼容）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn"

# EasyQoS - 简单流量控制
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn"

# 示例应用 - LuCI JS 开发模板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn"

# FileBrowser - 网页文件管理器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"

# FileBrowser - 网页文件管理器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"

# 文件管理器 - 网页文件管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"

# frp 客户端 - 内网穿透
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"

# frp 服务端 - 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn"

# fwknop - 单包授权（Port Knocking）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn"

# GOST - 加密隧道/代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn"

# HAProxy - TCP 负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"

# 硬盘休眠 - 空闲自动停转
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn"

# HTTPS DNS 代理 - DoH 加密解析
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"

# IPsec VPN 服务器（IKEv1 PSK/Xauth）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"

# irqbalance - 中断负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn"

# Keepalived - 高可用（VRRP）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-keepalived-zh-cn"

# ksmbd - 内核级 SMB 文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn"

# LLDP - 链路层邻居发现
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn"

# LXC - Linux 容器管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn"

# MicroSocks - 微型 SOCKS5 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn"

# MiniDLNA - 媒体服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn"

# MiniEAP - 校园网认证客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minieap-zh-cn"

# MJPG-Streamer - 摄像头视频流
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn"

# ModemBand - 4G/5G 模组频段锁定
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn"

# Mosquitto - MQTT 消息代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn"

# msd_lite - 组播转单播（IPTV 直播）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn"

# 音乐远程控制中心
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn"

# MWAN3 - 多线负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn"

# n2n - P2P VPN 组网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn"

# NATMap - NAT 端口映射
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn"

# Netdata - 实时系统监控
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"

# NextDNS - 加密 DNS 服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"

# NFS - 网络文件系统
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn"

# nftables QoS - 限速
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nft-qos-zh-cn"

# ngrok 客户端 - 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn"

# nlbwmon - 局域网流量统计
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"

# NPS - 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nps-zh-cn"

# NUT - UPS 不间断电源管理
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn"

# OpenConnect VPN 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn"

# OLED - 屏幕显示
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn"

# OLSR - 服务通告
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn"

# OLSR - 拓扑可视化
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn"

# OLSR - 网状路由协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn"

# omcproxy - IGMP 组播代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn"

# OpenList - 网盘聚合（Alist）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"

# OpenWISP - 集中管理代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn"

# OSCam - 电视卡共享服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn"

# p910nd - 打印服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn"

# PageKite - 反向隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn"

# PBR - 策略路由
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn"

# PPPoE 中继
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-relay-zh-cn"

# PPPoE 拨号服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn"

# Privoxy - 隐私过滤代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn"

# PS3NETSRV - PS3 游戏共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn"

# qBittorrent - BT 下载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn"

# QoS - 服务质量
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn"

# Radicale - 日历/通讯录服务器（CalDAV/CardDAV）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn"

# 内存清理 - 释放缓存
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn"

# Rclone - 云盘同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rclone-zh-cn"

# PPPoE 服务器（Roaring Penguin）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rp-pppoe-server-zh-cn"

# RustDesk - 远程桌面服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn"

# Samba4 - SMB 文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"

# ser2net - 串口转网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn"

# SmartDNS - 智能 DNS 分流
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"

# 短信工具 - SMS/USSD/AT 命令
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sms-tool-js-zh-cn"

# SNMP - 网络监控代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn"

# SoftEther VPN
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn"

# Splash - 网络认证启动页
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn"

# spotifyd - Spotify 音乐播放器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn"

# SQM - 智能队列管理（抗缓冲膨胀）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn"

# Squid - 代理缓存服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn"

# SSH 隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sshtunnel-zh-cn"

# 系统统计 - 图表监控
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"

# Syncthing - 文件同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-syncthing-zh-cn"

# 中山大学校园网 - H3C 认证
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sysuh3c-zh-cn"

# TimeWOL - 定时网络唤醒
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn"

# TinyProxy - 轻量 HTTP 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn"

# Tor - 匿名网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn"

# Transmission - BT 下载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn"

# Travelmate - 无线中继自动漫游
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-travelmate-zh-cn"

# ttyd - Web 终端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"

# UA2F - 校园网防检测
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn"

# udpxy - 组播转 HTTP 单播
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn"

# uHTTPd - Web 服务器配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn"

# Unbound - 递归 DNS 解析器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn"

# UPnP - 端口自动映射
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"

# USB 打印服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn"

# usteer - WiFi 频段引导漫游
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usteer-zh-cn"

# v2rayA - 透明代理面板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-v2raya-zh-cn"

# vlmcsd - KMS 激活服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"

# vnStat - 流量统计
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"

# vsftpd - FTP 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn"

# Watchcat - 网络看门狗（断网重启）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"

# 微信推送 - 通知
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn"

# WiFi 定时开关
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn"

# Wake-on-LAN - 网络唤醒
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"

# xfrpc - 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xfrpc-zh-cn"

# xinetd - 超级服务管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn"

# 迅雷快鸟 - 宽带加速
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn"

# ZeroTier - 虚拟局域网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"
