## 环境 
macOS Catalina

# 展开的源文件
```
Clang -E max.c > temp.c
```

## 编译链接
```
clang -fobjc-arc -framework Foundation test.m -o test
```

###### 编译阶段分析
```
clang -ccc-print-phases test.m
```

###### 预处理
```
clang -E test.m
```

#### 词法解析
```
clang -Xclang -dump-tokens test.m
```

#### 语法解析
```
clang -Xclang -ast-dump -fsyntax-only test.m
```

#### 代码生成
```
clang -O3 -emit-llvm test.m -c -o test.bm
```

#### LLVM反编译
```
../Tools/llvm-3.6.1/bin/llvm-dis < test.bm | less 
```

## Other
```
clang test.m -framework Foundation
clang -rewrite-objc test.m
```
