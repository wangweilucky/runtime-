//
//  Human+WW.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human (WW)

@property(nonatomic, copy) NSString* smallName;

+ (void)jump;
- (void)eat;

@end

NS_ASSUME_NONNULL_END
