//
//  Human+WDJ.m
//  runtime总结
//
//  Created by wangwei on 6/8/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Human+WDJ.h"
#import <objc/message.h>

static void *HumanSmallName = &HumanSmallName;

@implementation Human (WDJ)

- (void)setSmallName:(NSString *)smallName {
    objc_setAssociatedObject(self, HumanSmallName, smallName, OBJC_ASSOCIATION_COPY);
}

- (NSString *)smallName {
    return objc_getAssociatedObject(self, HumanSmallName);
}

@end
