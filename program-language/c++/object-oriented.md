---
layout: page
permalink: /program-language/c++/object-oriented
---

Object Oriented

### Class 

*definitions*

	class Box {
	   public:
	      double length;   // Length of a box
	      double breadth;  // Breadth of a box
	      double height;   // Height of a box
	};

#### Define C++ Objects

	Box Box1;          // Declare Box1 of type Box

#### Method

*declaretion*
	return_type method_name(argument_list);

*definition*

	可以使用作用域解柝运算符"::"来引用方法;

	class Box {
	   public:
	      double length;         // Length of a box
	      double breadth;        // Breadth of a box
	      double height;         // Height of a box
	
	      // Member functions declaration
	      double getVolume(void);
	      void setLength( double len );
	      void setBreadth( double bre );
	      void setHeight( double hei );
	};
	
	// Member functions definitions
	double Box::getVolume(void) {
	   return length * breadth * height;
	}

#### 访问控制

* public   - 类可见的所有地方都可以访问
* private  - 默认的访问权限，类外部都不能访问
* protected- 子类可以访问

#### 构造函数和析构函数

*declaretion*

	class_name(argument_list);

*definition*

	Line::Line( double len) {
		cout << "Object is being created, length = " << len << endl;
		length = len;
	}

初始化列表

	C::C( double a, double b, double c): X(a), Y(b), Z(c) {
		....
	}

析构函数，就是在构造函数前加"~"，当对象被摧毁时调用:

	~Line();

#### Copy Constructor
根据一个对象创建另一个对象

	classname (const classname &obj) {
	   // body of constructor
	}

#### Friend Method
可以在外面访问私有变量,相当于Java中的静态变量

	friend void printWidth( Box box );

声明所有函数都是Friend

	friend class ClassTwo;

#### 内联函数
使用`inline`修饰的函数

	inline int Max(int x, int y) {
		return (x > y)? x : y;
	}

#### This 指针
c++中所有对象都有指向自己的指针，名称为`this`

#### 静态成员
可以使用`static`关键字修饰成员，变量和方法

静态变量在类中只有一个副本，可以通过类直接引用。
静态方法可以通过类直接引用。

### 继承

	class derived-class: access-specifier base-class

访问权限默认为私有的。

Accessi         | public | protected | private
----------------+--------+-----------+------------
Same class      | yes    | yes       | yes
Derived classes	| yes    | yes       | no
Outside classes | yes    | no        | no

派生类会继承基类下面所有的方法：

* 构造函数、析造函数、Copy构造函数
* 重载操作符
* Friend方法

使用访问限定符时有下面规则：

* 使用public继承：基类的访问控制不变
* 使用protect继承：基类的public和protect成员，继承来为protect
* 使用private继承：基类的public和protect成员，继承来为private

#### 多重继承

	class derived-class: access baseA, access baseB....


### Overload
C++中有方法重载和操作符重载。

#### 方法重载
使用相同的方法名，但是方法参数不一样

#### 操作符重载

	Box operator+(const Box&);

### 多态
在C++中函数默认采用静态连接，所以不能实现多态。

需要在实现多态的方法前加上`virtual`，让该方法采用动态连接。

#### 纯虚拟方法,相当于抽像方法

	// pure virtual function
      virtual int area() = 0;


