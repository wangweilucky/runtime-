//
//  Human+WW.m
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Human+WW.h"
#import <objc/message.h>

static void *HumanSmallName = &HumanSmallName;

@implementation Human (WW)

- (void)setSmallName:(NSString *)smallName {
    objc_setAssociatedObject(self, HumanSmallName, smallName, OBJC_ASSOCIATION_COPY);
}

+ (void)jump {
    NSLog(@"*** jump -- action");
}

- (void)eat {
    NSLog(@"*** eat  -- action");
}

@end
