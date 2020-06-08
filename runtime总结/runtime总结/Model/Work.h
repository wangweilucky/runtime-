//
//  Work.h
//  runtime总结
//
//  Created by wangwei on 6/5/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Work : NSObject

@property(nonatomic, copy) NSString* workName;
@property(nonatomic, assign) int type;

@end

NS_ASSUME_NONNULL_END
