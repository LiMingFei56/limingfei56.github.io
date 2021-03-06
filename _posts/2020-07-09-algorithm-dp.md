---
layout: post
title: "Math 动态规划"
categories: math
tags: [math]
date: 2020-07-09
---

## Math 动态规划

> 动态规划(Dynamic programming，简称DP), 把主问题分为子问题, 主问题可以通过子问题  
> 求得. 

### 特性
1. 重叠子问题: 有些子问题的解会被引用多次, 因此需要保存子问题的解.
2. 最优子结构: 最优解肯定是有最优的子解转移推导而来.
3. 无后效性  : 子问题的解并不会由后面其他问题的解而改变

### 步骤

1. 划分状态: 确认子问题
2. 状态表示: 保存子问题的解
3. 状态转移: 怎么由子问题推导出父问题
4. 确定边界: 确定初始状态是什么？最小的子问题？最终状态又是什么

### 方向

1. 自底向上，简单来说就是根据初始状态，逐步推导到最终状态，而这个转移的过程，必定是一个拓扑序
2. 自顶向下，也就是从最终状态出发，如果遇到一个子问题还未求解，那么就先求解子问题

### 滚动数组

### 斐波那契数列

### Reference
[动态规划算法入门，这就够了](https://baijiahao.baidu.com/s?id=1631319141857419948&wfr=spider&for=pc)
[简单DP，🤷‍♀️必须秒懂！](https://leetcode-cn.com/problems/unique-paths-ii/solution/jian-dan-dpbi-xu-miao-dong-by-sweetiee/)
[如何理解动态规划？](https://www.zhihu.com/question/39948290)
