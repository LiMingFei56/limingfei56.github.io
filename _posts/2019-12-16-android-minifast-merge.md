---
layout: post
title: "Androidd 合并Manifest"
categories: android
tags: [android]
date: 2019-12-16
---

## Androidd 合并Manifest

官方文档
[Merge multiple manifest files](https://developer.android.google.cn//studio/build/manifest-merge.html)

### 1. 查看Minifast哪个位置冲突

  ./gradlew assembleDebug --stacktrace -info


### uses-sdk conflict

  方法一: 修改成功一样的版本 <recommend>
  方法二: 使用`<uses-sdk tools:overrideLibrary="your pkg name of libary with conflict" />`


### Reference

