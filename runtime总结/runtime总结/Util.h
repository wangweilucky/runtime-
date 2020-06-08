//
//  Util.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Util : NSObject

// runtime的基本操作：

// 类的size
+ (size_t)getSizeWithInstance:(Class)c;

// 所有的属性
// 当前类属性（带下划线）+成员属性
+ (NSArray<NSString *> *)class_copyPropertyList:(Class)c;
+ (NSArray<NSString *> *)class_copyIvarList:(Class)c;

// 所有的属性
// 当前类属性 + 父类属性 + 分类
+ (NSArray<NSString *> *)class_copyPropertyList_s:(Class)c;
+ (NSArray<NSString *> *)class_copyIvarList_s:(Class)c;

// 所有方法
+ (NSArray<NSString *> *)class_getClassMethod:(Class)c;
+ (NSArray<NSString *> *)class_getClassMethod_s:(Class)c;

// 类对象的所有子类：

// 分类中的属性：（分类中属性是如何添加到类中的）



// 获取对象的元类：

// 获取类的所有协议：



@end

NS_ASSUME_NONNULL_END
