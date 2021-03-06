---
layout: post
title: "Buile Make"
categories: build
tags: [build]
date: 2020-01-15
---

## Buile Make

[Make manual](https://www.gnu.org/software/make/manual/html\_node/Overview.html#Overview)

1. 会按照顺序读取GNUmakefile, makefile and Makefile. ( Recommend Makefile. )
2. 根据文件修改日期判断是否需要重新生成
3. 默认会执行第一个目标(target)

Makefile包含5部分内容:
  1. explicit rule
  2. implicit rule
  3. variable definition
  4. directive
  5. comment "#"

包含其它Makefile:
  
  include filenames…

MAKEFILE环境变量: make会先运行环境变量的MAKEFILE文件

*注: $需要转义"$$", 如果开了辅助扩展的话需要使用"$$$$". 使用"\"分行*

### 文件搜索
  1. 查找当前目录
  2. 查找VPATH变量
  3. vpath指令 同VPATH变量, 但是可以指patter files查找路径(vpath %.h ../headers
  设置查找,使用%通配符 ; vpath pattern 清楚这个匹配; vpath 清楚所有) 
  4. 当dir search 查找到先决条件, 但是这个文件不能在recipe中使用(目录不对), 因此
  需要使用automatic variables"$^"
  5. 可以使用Link Libraries(-lname 作为先决条件)

### make重构规则
  1. make会识别出所有的过期的显示目标和隐匿目标, 并重新重构. 对于最新的目标.
  2. 如果所有makefile有的改变了, make会重新加载这些文件, 并尝试重构目标
  3. 如果不想特定makefile或隐式规则工作, 那么可以创建一个makefile文件名的target
  4. target创建时使用"::"代替":"时, 会成独立的target, 使用Double-Colon规则

### 显示规则(explicit rule)

  target … : prerequisites …
        recipe
        …
        …

target: 可以是目标文件如a.o, 或者一个动作clean, 可以是多个(用space分隔, 使用
  $@引用每个目标)
prerequisites: 处理target的前提条件, 可以是target或者文件名, 分为普通条件
  和顺序条件(用"|"分开)
recipe: 一组shell命令, 需要使用tab


  objects = main.o kbd.o command.o display.o \
          insert.o search.o files.o utils.o

  edit : $(objects)
          cc -o edit $(objects)

  $(objects) : defs.h
  kbd.o command.o files.o : command.h
  display.o insert.o search.o files.o : buffer.h

pattern target:

  %.d: %.c
      @set -e; rm -f $@; \
       $(CC) -M $(CPPFLAGS) $< > $@.$$$$; \
       sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
       rm -f $@.$$$$

static pattern target:

  targets …: target-pattern: prereq-patterns …
        recipe
        …

  objects = foo.o bar.o

  all: $(objects)

  $(objects): %.o: %.c
        $(CC) -c $(CFLAGS) $< -o $@

跳过错误:
  1. 在shell 命令前加- 跳过当前shell命令的错误
  2. make -i or make --ignore-errors 跳过所有错误
  3. make -k or make --keep-going 跳生成失败的target

phony target:
  1. 不生成目标文件, 没有prerequisites就叫伪目标
  2. 如果当前目录正好有伪目标名称的文件, 那么伪目标永远不会执行, 显示配置
  .phony target就可以解决这个问题
  3. 目录递归也需要.phony, 因为子目录一直存在
  4. 会跳过隐式规则
  5. 等于创建一个无先决条件和recipe, 无文件的target并作为prerequisites.
  (因为无文件, 没有先决条件, 所以总是最新的)
  6. empty target. 伪目标的变体, 保存操作时间, 一般是一个空文件

通配符: "\*"表示所以 "~"表示主目录

### 隐式规则(implicit rule)
[内建隐式规则](https://www.gnu.org/software/make/manual/html\_node/Catalogue-of-Rules.html#Catalogue-of-Rules)
编写没有规则的target, 或者不写target, 隐匿规则就会启动

隐式推断:
  1. 当源文件只有一个时, make可以从目标文件".o"中找到".c"文件, 并且自动执行cc -c
  2. 如果省略了recipe, 那么可以省略".c"的先决条件

### special targer

1. .PHONY                 : 伪目标, 每次执行和忽略隐式规则(提高性能)
2. .SUFFIXES              : 检查反缀名称的先决条件
3. .DEFAULT               : 当找不到任何可执行的target时, 执行这个
4. .PRECIOUS              : 当make进程被杀死或中断, 会保留目标
5. .INTERMEDIATE          : 视为中间目标
6. .SECONDARY             : 视为中间目标, 但不删除
7. .SECONDEXPANSION       : 第二次扩展
8. .DELETE\_ON\_ERROR       : 会删除目标
9. .IGNORE                : 会忽略recipe执行错误
10. .LOW\_RESOLUTION\_TIME  : 用分辨率时间(忽略秒或分)来判断是否过期
11. .SILENT               : 不输出执行过程和结果
12. .EXPORT\_ALL\_VARIABLES : 导出所有变量到子进程
13. .NOTPARALLEL          : 顺序执行, 非并行, 递归调用make时任然并行
14. .ONESHELL             : recipe在一个shell中调用, 不会分开
15. .POSIX                : 按照posix方式检查及运行

一些隐式规则也会被视为特殊目标

### 变量
‘$(foo)’ or ‘${foo}’ 来引用变量

*注: 小心变量结尾空格*

变量扩展:
  1. 递归扩展: 使用=, 变量赋值给变量, 会把值扩展过来, 相互引用可能导致死循环
  2. 普通扩展: 使用:=, 变量不包含引用, 只包含值
  3. 条件扩展: 使用?=, 只有在变量没有定义时有效
  4. shell扩展: 使用!=, 执行右侧shell command, 赋值输出结果给变量
  5. 添加更多: 使用+=, 添加更多文本给变量
  6. 覆盖指令: 使用 override variable = value, 会覆盖变量的值
  7. define: 定义多行变量
  8. undefine: 解除变量
  9. 使用make -e 选项指定变量的值

目标特定变量值: target … : variable-assignment
模版特定变量值: pattern … : variable-assignment


特殊变量:
  1. MAKEFILE\_LIST
  2. .DEFAULT\_GOAL
  3. MAKE\_RESTARTS
  4. MAKE\_TERMOUT
  5. MAKE\_TERMERR
  6. .RECIPEPREFIX
  7. .VARIABLES
  8. .FEATURES
  9. .INCLUDE\_DIRS

引用替换: ‘$(var:a=b)’ (or ‘${var:a=b}’)

[自动变量](https://www.gnu.org/software/make/manual/html\_node/Automatic-Variables.html#Automatic-Variables)
在recipe中使用自动变量, 可以自动引用target name, prerequisites等

### 条件
ifeq ifneq ifdef ifndef 

  conditional-directive-one
  text-if-one-is-true
  else conditional-directive-two
  text-if-two-is-true
  else
  text-if-one-and-two-are-false
  endif


### 函数
[DOC](https://www.gnu.org/software/make/manual/html\_node/Text-Functions.html#Text-Functions)

  $(function arguments)

  $(wildcard pattern…) # 通配符在target里自动展开
  , 然而在变量和函数里不能展开, 这时需要使用通配符函数


### 产生Makefile的工具
make项目有很多共通的步骤, 每个项目都要写, 并且配置target很繁琐, 每个人都要学习Makefile
语法, 所以诞生产生Makefile的工具, 主要负责:

|              | autotools                                      | cmake                                       |
|--------------|------------------------------------------------|---------------------------------------------|
| 变量定义     | name=...                                       | set(name, "...")                            |
|--------------|------------------------------------------------|---------------------------------------------|
| 环境检测     | AC\_INIT                                        | find\_library(lib libname pathllist)         |
|              | 测试程序                                       | find\_package(packename)                     |
|              | AC\_PROG\_CC                                     | find\_path(var name pathlist)                |
|              | 测试函数库                                     | find\_program(var name pathlist)             |
|              | AC\_CHECK\_LIB([pthread], [pthread\_rwlock\_init]) |                                             |
|              | AC\_PROG\_RANLIB                                 |                                             |
|              | 测试头文件                                     |                                             |
|              | 测试类型定义                                   |                                             |
|              | 测试结构                                       |                                             |
|              | 测试编译器特性                                 |                                             |
|              | 测试库函数                                     |                                             |
|              | 测试系统调用                                   |                                             |
|              | AC\_OUTPUT                                      |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 子目录       | SUBDIRS=                                       | add\_subdirectory(list)                      |
|--------------|------------------------------------------------|---------------------------------------------|
| 可执行文件   | bin\_PROGRAMS=binname                           | add\_executable(binname ${sources})          |
|              | binname\_SOURCES=                               | target\_link\_libraries(binname librarylist)  |
|              | binname\_LDADD=                                 |                                             |
|              | binname\_CFLAGS=                                |                                             |
|              | binname\_LDFLAGS=                               |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 动态库       | lib\_LIBRARIES=libname.so                       | add\_library(libname shared ${source} )      |
|              | libname\_SOURCES=                               |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 静态库       | lib\_LIBRARIES=libname.a                        | add\_library(libname static ${source} )      |
|              | libname\_a\_SOURCES=                             |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 头文件       | INCLUDES=                                      | include\_directories(list)                   |
|              | include\_HEADES=  或CFLAGS=-I                   |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 源码搜索     |                                                | aux\_source\_directories(. list)              |
|--------------|------------------------------------------------|---------------------------------------------|
| 依赖库       | LIBS=                                          | target\_link\_libraries(binname librarylist)  |
|              | LDADD=                                         |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 标志         | CFLAGS=                                        | set(CMAKE\_C\_FLAGS  ...)                     |
|              | LDFLAGS=                                       |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| libtool      | AC\_PROG\_LIBTOOL                                |                                             |
|              | lib\_LTLIBRARIES=name.la                        |                                             |
|              | name\_la\_SOURCES=                               |                                             |
|--------------|------------------------------------------------|---------------------------------------------|
| 安装设置     |                                                | install(TARGETS targets...                  |
|              |                                                | [[ARCHIVE,LIBRARY,RUNTIME][DESTINATION      |
|              |                                                | < dir >][PERMISSIONS permissions...]        |
|              |                                                | [CONFIGURATIONS[Debug,Release,...]]         |
|              |                                                | [COMPONENT < component >][OPTIONAL]] [...]) |
|--------------|------------------------------------------------|---------------------------------------------|
| 其他文件     | EXTRA\_DIST                                     | install(FILES files.. )                     |
|              |                                                | install(DIRECTORY dirs..)                   |
|--------------|------------------------------------------------|---------------------------------------------|
| 条件语句     | 使用Make的条件语句                             | if(my)                                      |
|              |                                                | else(my)                                    |
|              |                                                | endif(my)                                   |
|              |                                                | while(condition)                            |
|              |                                                | endwhile(condition)                         |
|--------------|------------------------------------------------|---------------------------------------------|
| 执行外部命令 |                                                | exec\_program(commd )                        |
|--------------|------------------------------------------------|---------------------------------------------|
| 子模块       |                                                | include()                                   |
| 信息输出     |                                                | messge(STATUS "messge")                     |
| 项目         |                                                | project(name)                               |
|--------------|------------------------------------------------|---------------------------------------------|




#### Autoconf + Automake
1. 运行autoscan命令
2. 将configure.scan 文件重命名为configure.in，并修改configure.in文件
3. 在project目录下新建Makefile.am文件，并在core和shell目录下也新建makefile.am文件
4. 在project目录下新建NEWS、 README、 ChangeLog 、AUTHORS文件
5. 将/usr/share/automake-1.X/目录下的depcomp和complie文件拷贝到本目录下
6. 运行aclocal命令
7. 运行autoconf命令
8. 运行automake -a命令
9. 运行./confiugre脚本

#### cmake
1. 编写CMakeLists.txt
2. 运行cmake命令

### Reference
