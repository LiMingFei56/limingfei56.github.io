---
layout: post
title: "Build CMake"
categories: build
tags: [build]
date: 2020-01-19
---

## Build CMake

[CMake Doc](https://cmake.org/cmake/help/v3.16/manual/cmake-commands.7.html)
CMake把源分为可执行文件和已编译头文件, 可执行文件用来链接或执行, 已编译头文件用
来导入(include)

### 依赖检查
    cmake_minimum_required(VERSION 3.10)

    # set the project name and version
    project(Tutorial VERSION 1.0)

添加子任务, 会在子目录中找CMakeLists.txt文件
    add_subdirectory(MathFunctions)

检查函数是否存在
    include(CheckSymbolExists)
    set(CMAKE_REQUIRED_LIBRARIES "m")
    check_symbol_exists(log "math.h" HAVE_LOG)
    check_symbol_exists(exp "math.h" HAVE_EXP)


### 配置文件
CMake会根据TutorialConfig.h.in 生成TutorialConfig.h
    configure_file(TutorialConfig.h.in TutorialConfig.h)

cmakedefine vs define
前者会根据CMakeLists.txt中是否定义对应的变量名而判断最后生成的define还是undefine

    配置文件中@"PROJECTNAME_VERSION_MAJOR"@ 和 @"PROJECTNAME_VERSION_MINOR"@ 会
    被替换成项目版本

### 配置依赖

    target_compile_definitions // 同#cmakedefine
    target_include_directories // 配置查找已编译头文件
    target_link_libraries // 配置查找已编译库文件

    target_compile_features // 编译特性
    target_compile_options // 编译项

### 配置编译可选项
可以使用ccmake管理, 需要在Configure文件中定义#cmakedefine USER_MYMATH
    option(USE_MYMATH "Use tutorial provided math implementation" ON)



### 编译任务
前面是生成后的名称, 后面是依赖源文件
    # 添加一个可执行的
    add_executable(Tutorial tutorial.cxx) 
    # 添加一个Library
    add_library(MathFunctions mysqrt.cxx)

> 默认cmake会编译动态库SHARED, 如果想编译静态库, 需要加上STATIC
    add_library(SqrtLibrary STATIC
                mysqrt.cxx
                ${CMAKE_CURRENT_BINARY_DIR}/Table.h
                )

生成相对地坛库:

    gcc -fPIC -shared func.c -o libfunc.so

-fPIC表示生成的库使用相对地址, 对应CMark中的POSITION_INDEPENDENT_CODE

    set_target_properties(SqrtLibrary PROPERTIES
                        POSITION_INDEPENDENT_CODE YES}
                        )

    target_link_libraries(MathFunctions PRIVATE SqrtLibrary)
    

### 编译设置

    # specify the C++ standard
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CXX_STANDARD_REQUIRED True)

    add_library(tutorial_compiler_flags INTERFACE)
    target_compile_features(tutorial_compiler_flags INTERFACE cxx_std_11)
    set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU>")
    set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
    target_compile_options(tutorial_compiler_flags INTERFACE
      "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
      "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
    )

### 自定义命令与生成文件

    add_custom_command(
      OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
      COMMAND MakeTable ${CMAKE_CURRENT_BINARY_DIR}/Table.h
      DEPENDS MakeTable
    )

### 生成表达式

    $<0:...> // 空字符串
    $<1:...> // ...




### 配置安装
配置安装目录使用CMAKE_INSTALL_PREFIX环境变量  或者  cmake --install --prefix 指定
    // 库
    install(TARGETS MathFunctions DESTINATION lib)
    install(FILES MathFunctions.h DESTINATION include)

    // 可执行
    install(TARGETS Tutorial DESTINATION bin)
    install(FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h"
      DESTINATION include
      )

    # control where the static and shared libraries are built so that on windows
    # we don't need to tinker with the path to run the executable
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")


提供程序或库给别人使用:
install命令时需要指定EXPORT

    #1 指定EXPORT
    install(TARGETS MathFunctions tutorial_compiler_flags
        DESTINATION lib
        EXPORT MathFunctionsTargets)
    install(FILES MathFunctions.h DESTINATION include)

    #2 安装MathFunctionsTargets.cmake
    install(EXPORT MathFunctionsTargets
      FILE MathFunctionsTargets.cmake
      DESTINATION lib/cmake/MathFunctions
    )

    #3 指定库导出的目录, 可以让程序找到
    target_include_directories(MathFunctions
                           INTERFACE
                            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                            $<INSTALL_INTERFACE:include>
                           )

    #4 使find_package可以找到本项目
    #Config.cmake.in
    @PACKAGE_INIT@

    include ( "${CMAKE_CURRENT_LIST_DIR}/MathFunctionsTargets.cmake" )
    #CMakeLists 配置Config.cmake.in
    install(EXPORT MathFunctionsTargets
      FILE MathFunctionsTargets.cmake
      DESTINATION lib/cmake/MathFunctions
    )

    include(CMakePackageConfigHelpers)
    # generate the config file that is includes the exports
    configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
      "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake"
      INSTALL_DESTINATION "lib/cmake/example"
      NO_SET_AND_CHECK_MACRO
      NO_CHECK_REQUIRED_COMPONENTS_MACRO
      )
    # generate the version file for the config file
    write_basic_package_version_file(
      "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake"
      VERSION "${Tutorial_VERSION_MAJOR}.${Tutorial_VERSION_MINOR}"
      COMPATIBILITY AnyNewerVersion
    )

    # install the configuration file
    install(FILES
      ${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake
      DESTINATION lib/cmake/MathFunctions
      )

    #5 配置自己的程序也使用构建目录
    export(EXPORT MathFunctionsTargets
      FILE "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsTargets.cmake"
    )


### 测试
    enable_testing()

    # does the application run
    add_test(NAME Runs COMMAND Tutorial 25)

    # does the usage message work?
    add_test(NAME Usage COMMAND Tutorial)
    set_tests_properties(Usage
      PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number"
      )

    # define a function to simplify adding tests
    function(do_test target arg result)
      add_test(NAME Comp${arg} COMMAND ${target} ${arg})
      set_tests_properties(Comp${arg}
        PROPERTIES PASS_REGULAR_EXPRESSION ${result}
        )
    endfunction(do_test)

    # do a bunch of result based tests
    do_test(Tutorial 4 "4 is 2")
    do_test(Tutorial 9 "9 is 3")
    do_test(Tutorial 5 "5 is 2.236")
    do_test(Tutorial 7 "7 is 2.645")
    do_test(Tutorial 25 "25 is 5")
    do_test(Tutorial -25 "-25 is [-nan|nan|0]")
    do_test(Tutorial 0.0001 "0.0001 is 0.01")

### 分发
分发程序需要使用到CPack, 构建出二进制安装包

    include(InstallRequiredSystemLibraries)
    set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
    set(CPACK_PACKAGE_VERSION_MAJOR "${Tutorial_VERSION_MAJOR}")
    set(CPACK_PACKAGE_VERSION_MINOR "${Tutorial_VERSION_MINOR}")
    include(CPack)
    
    //构建
    cpack
    //指定生成器使用-G, 指定多配置使用-C
    cpack -G ZIP -C Debug
    //创建源码分发
    cpack --config CPackSourceConfig.cmake

CMake构建支持Debug, release, minsizerel, relwithdebinfo

    cmake -DCMAKE_BUILD_TYPE=Debug ../../MultiPackage/
    cmake --build .
    cpack --config ../../MultiPackage/MultiCPackConfig.cmake

### 添加测试仪表版
配置CTestConfig.cmake文件
    // CMakeLists.txt 中替换
    enable_testing() to include(CTest)
    // CTestConfig.cmake
    set(CTEST_PROJECT_NAME "CMakeTutorial")
    set(CTEST_NIGHTLY_START_TIME "00:00:00 EST")

    set(CTEST_DROP_METHOD "http")
    set(CTEST_DROP_SITE "my.cdash.org")
    set(CTEST_DROP_LOCATION "/submit.php?project=CMakeTutorial")
    set(CTEST_DROP_SITE_CDASH TRUE)

    ctest [-VV] -D Experimental
    ctest [-VV] -C Debug -D Experimental

### Reference
[CMake Tutorial](https://cmake.org/cmake/help/v3.18/guide/tutorial/index.html)  
[CMakeLists.txt 语法介绍与实例演练](https://blog.csdn.net/afei__/article/details/81201039)  

### Reference

