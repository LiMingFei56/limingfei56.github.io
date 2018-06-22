---
layout: page
permalink: /program-language/knowledge/program-mode
---

## 编程模式

### 过程式编程

### 面向对象式编程
关注的是编程的数据

### 泛型式编程
关注的是算法，跟面向对象一样，抽象和创建可重用代码。不一样在于，泛型编和旨在编写独
立于数据类型的代码。使用泛型工具和通用算法来实现泛型式编程。

使用同一个find函数来处理数组、链表或任何其他容器类型。

迭代器：
* 可以获取当前元素
* 可以判断是否有下一个元素(超尾标记)
* 可以移动到下一个元素

为了适用于所有的数据结构，每种数据结构都需要实现自己的迭代器。这样就可以用一个通用函数
来处理所有数据结构。

*容器*
没有与基本容器概念对应的类型，但概念描述了所有容器类都通用的元素。它是一个概念化的
抽象基类--因为容器类并不真正使用继承机构。容器概念指定了所有STL容器类都必须满足
的一系列要求。

不能将任何类型的对象存储在容器中，具体地说，类型必须是可复制构造的和可赋值的。
C++11改进了这些概念，添加了术语可复制插入(CopyInsertable)和可移动插入(MoveInsertable)


### 函数式编程
