//
//  UnifiedQueryPointRequest+WW.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Person.h"
#import "Work.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (WW)

@property(nonatomic, strong) Work* work;

+ (void)personCategateClssMethod;
-(void)personCategateInstaMethod;

@end

NS_ASSUME_NONNULL_END
