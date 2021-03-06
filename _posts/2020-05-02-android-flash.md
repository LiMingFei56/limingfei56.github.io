---
layout: post
title: "Android 刷机"
categories: android
tags: [android]
date: 2020-05-02
---

## Android 刷机

*** 刷机前一定做好系统备份， 特别是recovery 刷包， 不然又要刷官方recovery 刷底包， 来回折腾 ***

进入`fastboot`模式方法:

    1. 按住音量下键， 插入数据线
    2. 按住音量下键和电源键， 插入数据线

### 1. Android 刷机前需要解锁

> 进入`fastboot`模式
    // 查看是否解锁
    fastboot oem get-bootinfo 
    // 解锁
    fastboot oem unlock 1109463729125518

### 2. 选择ROM
ATH-UL00
[机锋](http://bbs.gfan.com/)
[ROM之家](https://www.romzhijia.net/)

> 这些ROM刷机不太可靠，并且必须保证机型和型号对应， 注意机器的网络版本（全网通，双网通）

### 3. 手机ROOT

使用`TWRP`和`Magisk`Root, 仅支持5.0以上

#### 1. 准备
1. 下载[TWRP](https://twrp.me/Devices/) 
2. 下载[Magisk](https://github.com/topjohnwu/Magisk)
3. 下载[下载最新adb(platform-tools)](https://blog.csdn.net/u010164190/article/details/94741863)


下载：https://developer.android.com/studio/releases/platform-tools

ADB和Fastboot for Windows

https://dl.google.com/android/repository/platform-tools-latest-windows.zip

ADB和Fastboot for Mac

https://dl.google.com/android/repository/platform-tools-latest-darwin.zip

ADB和Fastboot for Linux

https://dl.google.com/android/repository/platform-tools-latest-linux.zip

sudo cp adb fastboot /usr/local/bin

#### 2. 刷Root
使用之前请备份好官方Recovery

> 1. 刷TWRP, 参照TWRP 下载页

    adb reboot bootloader
    fastboot flash recovery twrp.img  （7i  需要使用twrp-3.0.0-0-rip.img）
    fastboot reboot

> 2. 刷入 Magisk，首先把 Magisk 的 .zip 包放到 sd 卡中，然后重启进入 recovery:

    adb reboot recovery

> 3. 进入 TWRP 后，选择 Install，选择 Install zip，找到 Magisk .zip 包的位置，选中后右滑确认刷入。
> 4. 等待刷入完毕，成功后重启手机
> 5. 手机有可能因为第三方Recovery， 不能进入系统， 需要重新刷回官方Recovery

> Magisk 刷不了  就刷Supersu

> 使用钛备份、安卓优化大师、豌豆荚  卸载应用

#### 3. 恢复原厂系统

> 华为Recovery， 支持下载系统重新安装， 这叫eRecovery。 进入Recovery 是关机状态按住电源+音量上键， 
> 进入eRecovery是插数据线并且关机状态， 按住电源+音量上键

### Reference
[Android Root 教程](https://www.jianshu.com/p/c33b909db895)  
[TWRP](https://twrp.me/Devices/)  
[Magisk](https://github.com/topjohnwu/Magisk)  

[安卓手机最新Root通用教程](https://www.jianshu.com/p/4bfe5160505d)  
