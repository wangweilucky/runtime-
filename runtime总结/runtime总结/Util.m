//
//  Util.m
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Util.h"
#import <objc/message.h>

@implementation Util

// 获取对象的size
+ (size_t)getSizeWithInstance:(Class)c {
    return class_getInstanceSize(c);
}


// 获取一个属性所有的属性
+ (NSArray *)getIvarsWithClass:(Class)c
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(c, &count);
    
    NSMutableArray<NSString *> *ivarArr = [NSMutableArray arrayWithCapacity:count];
    for (int i =0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *nameString = [NSString stringWithUTF8String:name];
        [ivarArr addObject:nameString];
    }
    return ivarArr;
}

//// 获取一个对象的变量
//+ (NSArray *)getInstanceVariable:(id)instance
//{
//    Ivar *insVars = class_getInstanceVariable([instance class], <#const char * _Nonnull name#>)
//}



// 打印ivar的字符串
-(void)logIvarName:(Ivar)ivar
{
    if (ivar) {
        const char* name = ivar_getName(ivar);
        NSLog(@"name = %s",name);
    } else {
        NSLog(@"ivar为null");
    }
}

@end
