//
//  UnifiedQueryPointRequest.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : Human

@property(nonatomic, copy) NSString* idType;
@property(nonatomic, copy) NSString* idNumber;
@property(nonatomic, copy) NSString* phoneNum;
@property(nonatomic, assign) long long amount;
@property(nonatomic, copy) NSString* bindId;

+ (void)personClassMethod;
+ (void)persontClassMethodNoIMP;
- (void)personInstanceMethod;
- (void)personInstanceMethodNoImp;

@end

NS_ASSUME_NONNULL_END
