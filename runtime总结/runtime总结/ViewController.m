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

@interface ViewController ()

@property(nonatomic ,strong) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.person = [Person new];
    
}

// runtime的基本操作
- (void)baseRuntimeOpration {
    
    // 获取所有属性

    // 分类中的属性：（分类中属性是如何添加到类中的）

    // 获取类的所有方法：

    // 获取对象的元类：

    // 获取类的所有协议：
}


@end
