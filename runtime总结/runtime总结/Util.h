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

// 获取一个属性所有的属性
+ (NSArray *)getAllAttribesWithClass:(Class)c;
+ (NSArray *)getAllAttribesWithInstance:(id)instance;


// 获取类的所有属性：

// 分类中的属性：（分类中属性是如何添加到类中的）

// 获取类的所有方法：

// 获取对象的元类：

// 获取类的所有协议：

@end

NS_ASSUME_NONNULL_END
