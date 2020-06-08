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
+ (NSArray<NSString *> *)class_copyPropertyList:(Class)c;
+ (NSArray<NSString *> *)class_copyPropertyList_s:(Class)c;
+ (NSDictionary<NSString *, NSString *> *)class_copyPropertyAttributeList:(Class)c;

// 所有的成员属性
+ (NSArray<NSString *> *)class_copyIvarList:(Class)c;
+ (NSArray<NSString *> *)class_copyIvarList_s:(Class)c;
+ (NSDictionary<NSString *, NSString *> *)class_copyIvarAttributeList:(Class)c;

// 实例方法
+ (NSArray<NSString *> *)class_copyMethodList:(Class)c;
+ (NSArray<NSString *> *)class_copyMethodList_s:(Class)c;

// 类方法
+ (NSArray<NSString *> *)class_copyClassMethodList:(Class)c;





// 类对象的所有子类：
// 分类中的属性：（分类中属性是如何添加到类中的）



// 获取对象的元类：

// 获取类的所有协议：



@end

NS_ASSUME_NONNULL_END
