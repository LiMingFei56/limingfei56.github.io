---
layout: page
permalink: /linux/common-command
---

Common Command

#### 删除.svn文件夹
find . -type d -name ".svn" | xargs rm -rf

#### 删除dpkg -l 中rc状态的包
dpkg -l | grep ^rc | cut -d' ' -f3 | sudo xargs dpkg --purge

#### 遍历目录下的所有文件，指定替换文件内容

	grep -i "default" -r . |awk -F : '{print $1}' | sort | uniq | xargs sed -i 's/default/c/g'

因为在MacOS和Linux平台下 Sed的i选项实现不一样，MacOS要求提供备份文件名，如果不需要在MacOS上可以这样

	grep -i "default" -r . |awk -F : '{print $1}' | sort | uniq | xargs sed -i '' 's/default/c/g'

#### Svn添加当前目录下，没有添加版本控制的文件

	svn st | awk '{if ( $1 == "?") { print $2}}' | xargs svn add