/*
  main.m
  Objectlive-C-01-基础语法

  Created by 辩识、 on 2020/11/17.
  OC相对于C
  1.在C的基础之上新增了1小部分面向对象的语法。
  2.将C的复杂的，繁琐的，可恶的语法封装的更为简单。
  3.OC完全兼容C语言。

  OC程序的源文件的后缀名是.m  m表示message 代表OC中最重要的一个机制 消息机制。
  main函数仍然是OC程序的入口和出口，依然有返回值 代表程序的执行状态。
  main函数的参数：仍然可以接收用户在运行程序的时侯传递的数据。

  #import指令：
  1.以#号开头，是一个预处理命令。
  2.作用：是C语言中#include指令的增强版。
  3.增强：同一个文件无论#import多少次，都只会包含一次。
         如果#include指令要实现这个效果就必须配合条件编译指令来实现。
         而#import指令只需要直接包含就可以 其他什么都不用做。
 
  框架：
     1.是一个功能集 苹果或者第三方事先将一些程序中开发时经常用到的功能写好，把这些功能封装在一个类或者函数中，这些函数和集合就叫框架。类似C语言的函数库。
     2.Foundation框架。
       Foundation：基础 基本，这个框架中提供了一些最基础的功能。例如：输入和输出。一些数据类型。
       Foundation.h这个文件中包含了foundation框架中的其它所有头文件。
       所以，只需要包含foundation.h就相当于包含了foundation框架中所有的头文件。
       那么foundation框架中的所有函数和类都可以直接使用。
 
  @autoreleasepool是自动释放池。
       你可以把代码写在自动释放池中 或者干脆把这个自动释放池删除 不会有任何影响。
  
  NSlog函数：
       1.作用：是printf的增强版，向控制台输出信息。
       2.语法：
            NSLog(@"格式控制字符串",变量列表);
         最简单的语法
            NSLog(@"要输出的信息");
       3.增强：
            1.输出一些调试相关信息，执行这段代码的时间，程序的名称，进程编号，线程编号，输出的信息。
            2.在输出完信息后回自动换行。
            3.OC新增了一些数据类型，NSlog函数不仅仅可以输出C数据类型变量的值，还可以输出OC新增数据类型变量的值。
            4.用法和printf函数差不多，一样可以输出变量值，并且占位符和用法都一样。
            5.NSlog函数的第一个参数前面必须要加一个@
            6.如果手贱在字符串的末尾加了一个’\n‘那么函数自动换行就会失效。
 ----------------------------------------------------------------------------------------------------------
        忘记#include 使用#import
        忘记printf   使用NSlog
   字符串：
        1.C语言的字符串存储方式 a.使用字符数组 b.使用字符指针
        2.OC中设计了一个更好用的字符串存储类型，NSString。NSString类型的指针变量专门用来存储OC字符串的地址。
        3.OC字符串常量必须要使用前缀 @。
          "jack"是一个C语言的字符串。
          @"jack"是一个OC语言的字符串。
          NSString类型的指针变量只能存储OC字符串的地址。
    总结：
        1.在OC中专门设计了一个NSString类型来存储字符串。
        2.字符串分为C字符串和OC字符串。
          字符串如果有@前缀，这个字符串常量就是OC字符串。    @"jack"
          字符串如果没有@前缀，这个字符串常量就是C字符串。   "jack"
        3.NSString类型的指针变量只能存储OC字符串。
 
    注意：
        1.NSlog函数的第一个参数是一个OC字符串。
        2.如果要使用NSlog函数来输出OC字符串的值，要使用%@
        
    NS前缀：
        NextStep --> Cocoa -->Foundation框架中.
        
    @符号：
        1.将C字符串转换为OC字符串。
        2.OC中的绝大部分关键字都是以@符号开头。
    
    注释：
        和C语言注释一模一样，分为单行注释和多行注释。
        
    函数的定义和调用：
        1.和C语言一模一样。
 
 
*/
#import <Foundation/Foundation.h>

double signals1();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"jack";
        
        NSString *demo = @"power";
        float f1 = 12.12f;
        NSLog(@"jack f1 = %f",f1);
        NSLog(@"Hello, World!");
        NSLog(@"Hello, World!%@",str);
        signals1();
    }
    return 0;
}


double signals1()
{
    
    NSLog(@"Hello, CLAY-BIOS!");
    
    return 0;
}
