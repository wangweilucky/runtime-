//
//  ViewController.m
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Util.h"
#import <objc/runtime.h>

@interface ViewController ()

@property(nonatomic ,strong) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.person = [Person new];
    
    [self baseRuntimeOpration];
}

// runtime的基本操作
- (void)baseRuntimeOpration {
    
    // 获取一个类的size
    size_t classSize = class_getInstanceSize([self.person class]);
    NSLog(@"person class size: %zu", classSize);

    // 所有属性
    NSArray *propertys_s = [Util class_copyPropertyList_s:[self.person class]];
    NSLog(@"person propertys_s: %@", propertys_s);
    
    // 所有成员变量
    NSArray *ivars_s = [Util class_copyIvarList_s:[self.person class]];
    NSLog(@"person ivars_s: %@", ivars_s);
    
    // 所有方法
    NSArray *methods = [Util class_getClassMethod:<#(nonnull Class)#>];

    // 分类中的属性：（分类中属性是如何添加到类中的）

    // 获取类的所有方法：

    // 获取对象的元类：

    // 获取类的所有协议：
}


@end
