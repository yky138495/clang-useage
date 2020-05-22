#!/bin/bash

mkdir ./output

##  Clang是一个C++编写、基于LLVM、发布于LLVM BSD许可证下的C/C++/Objective-C/Objective-C++编译器。
# 编译C++
clang -rewrite-objc hello.m

## 编译链接 生成可执行文件
clang -fobjc-arc -framework Foundation hello.m -o ./output/hello

## 分解
#### 1:编译阶段
clang -ccc-print-phases hello.m 

#### 2:预处理
clang -E hello.m > ./output/预处理.txt

#### 3:词法解析
clang -Xclang -dump-tokens hello.m 


#### 4:语义解析
clang -fsyntax-only -Xclang -print-decl-contexts hello.m 


#### 5:语法解析
clang -Xclang -ast-dump -fsyntax-only hello.m 


#### 6:语法解析
clang -O3 -emit-llvm hello.m -c -o ./output/hello.bm  