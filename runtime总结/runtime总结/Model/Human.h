//
//  Human.h
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject {
    int age;
    int _sex;
}

@property(nonatomic, copy) NSString* name;

@end

NS_ASSUME_NONNULL_END
