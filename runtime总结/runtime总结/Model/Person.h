//
//  UnifiedQueryPointRequest.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : Human {
    Person *_baseFriend;
    Person *_sexFriend;
}

@property(nonatomic, copy) NSString* idType;
@property(nonatomic, copy) NSString* idNumber;
@property(nonatomic, copy) NSString* phoneNum;
@property(nonatomic, assign) long long amount;
@property(nonatomic, copy) NSString* bindId;

+ (void)personClassMethod;
- (void)personInstanceMethod;

@end

NS_ASSUME_NONNULL_END
