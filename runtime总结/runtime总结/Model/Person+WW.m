//
//  UnifiedQueryPointRequest+WW.m
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Person+WW.h"
#import <objc/message.h>

static void *PersonWork = &PersonWork;

@implementation Person (WW)

- (void)setWork:(Work *)work {
    objc_setAssociatedObject(self, PersonWork, work, OBJC_ASSOCIATION_RETAIN);
}
- (Work *)work {
    return objc_getAssociatedObject(self, PersonWork);
}

+ (void)personCategateClssMethod {
    NSLog(@"*** personCategateClssMethod -- action");
}
-(void)personCategateInstaMethod {
    NSLog(@"*** personCategateInstaMethod -- action");
}


@end
