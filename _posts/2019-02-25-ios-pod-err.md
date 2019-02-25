---
layout: post
title: Xcode 10.1 pod脚本报错
categories: [ios]
tags: [error, xcode]
date: 2018-2-25
---

## Xcode 10.1 导入项目后pod脚本报错

PhaseScriptExecution [CP]\ Copy\ Pods\ Resources /Users/limingfei/Library/Developer/Xcode/DerivedData/便民通-eeawmrydlmhnifbckoyinnfcfoxf/Build/Intermediates.noindex/便民通.build/Debug-iphoneos/便民通.build/Script-E2F40F4F53FCCF5F895762C4.sh (in target: 便民通)
    cd /Volumes/user/workspace/sd1.8.0
        /bin/sh -c /Users/limingfei/Library/Developer/Xcode/DerivedData/\\便\\民\\通-eeawmrydlmhnifbckoyinnfcfoxf/Build/Intermediates.noindex/\\便\\民\\通.build/Debug-iphoneos/\\便\\民\\通.build/Script-E2F40F4F53FCCF5F895762C4.sh

        /Users/limingfei/Library/Developer/Xcode/DerivedData/便民通-eeawmrydlmhnifbckoyinnfcfoxf/Build/Intermediates.noindex/便民通.build/Debug-iphoneos/便民通.build/Script-E2F40F4F53FCCF5F895762C4.sh: line 2: /Volumes/user/workspace/sd1.8.0/Pods/Target Support Files/Pods-便民通/Pods-便民通-resources.sh: Permission denied
        Command PhaseScriptExecution failed with a nonzero exit code



### 解决1
需要清理pod后重新安装

    sudo gem install cocoapods-deintegrate cocoapods-clean
    pod deintegrate
    pod clean

### 解决2
加上执行权限

    chmod a+x Pods/Target\ Support\ Files/Pods-便民通/Pods-便民通-resources.sh