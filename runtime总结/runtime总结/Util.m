//
//  Util.m
//  runtime总结
//
//  Created by wangwei on 6/4/20.
//  Copyright © 2020 wangwei. All rights reserved.
//

#import "Util.h"
#import <objc/message.h>

@implementation Util

// 获取对象的size
+ (size_t)getSizeWithInstance:(Class)c {
    return class_getInstanceSize(c);
}


+ (NSArray<NSString *> *)class_copyPropertyList:(Class)c
{
    unsigned int count = 0;
    objc_property_t *propertys = class_copyPropertyList(c, &count);
    NSMutableArray<NSString *> *propertyArr = [NSMutableArray arrayWithCapacity:count];
    for (int i =0; i<count; i++) {
        objc_property_t property = propertys[i];
        const char *name = property_getName(property);
        [propertyArr addObject:[NSString stringWithUTF8String:name]];
    }
    if (propertys) {
        free(propertys);
    }
    return propertyArr;
}

+ (NSArray<NSString *> *)class_copyIvarList:(Class)c
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(c, &count);
    NSMutableArray<NSString *> *ivarArr = [NSMutableArray arrayWithCapacity:count];
    for (int i =0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *nameString = [NSString stringWithUTF8String:name];
        [ivarArr addObject:nameString];
    }
    if (ivars) {
        free(ivars);
    }
    return ivarArr;
}

+ (NSArray<NSString *> *)class_copyMethodList:(Class)c
{
    unsigned int count = 0;
    Method *methods = class_copyMethodList(c, &count);
    NSMutableArray<NSString *> *methodArr = [NSMutableArray arrayWithCapacity:count];
    for (int i =0; i<count; i++) {
        Method method = methods[i];
        SEL sel = method_getName(method);// 方法编号
        const char *name = sel_getName(sel);
        [methodArr addObject:[NSString stringWithUTF8String:name]];
    }
    if (methods) {
        free(methods);
    }
    return methodArr;
}

+ (NSArray<NSString *> *)class_copyClassMethodList:(Class)c
{
    const char *meteClsName = object_getClassName(c);
    Class metaCls = objc_getMetaClass(meteClsName);
    return [self class_copyMethodList:metaCls];
}




+ (NSArray<NSString *> *)class_copyPropertyList_s:(Class)c {
    NSMutableArray *propertys = [NSMutableArray array];
    Class cls = c;
    while (cls != [NSObject class]) {
        [propertys addObjectsFromArray: [self class_copyPropertyList:cls]];
        cls = class_getSuperclass(cls);
    }
    return propertys;
}

+ (NSArray<NSString *> *)class_copyIvarList_s:(Class)c
{
    NSMutableArray *ivars = [NSMutableArray array];
    Class cls = c;
    while (cls != [NSObject class]) {
        [ivars addObjectsFromArray: [self class_copyIvarList:cls]];
        cls = class_getSuperclass(cls);
    }
    return ivars;
}

+ (NSArray<NSString *> *)class_copyMethodList_s:(Class)c
{
    NSMutableArray *methods = [NSMutableArray array];
    Class cls = c;
    while (cls != [NSObject class]) {
           [methods addObjectsFromArray:[self class_copyMethodList:cls]];
           cls = class_getSuperclass(cls);
    }
    return methods;
}


+ (NSDictionary<NSString *, NSString *> *)class_copyPropertyAttributeList:(Class)c
{
    unsigned int count = 0;
    objc_property_t *propertys = class_copyPropertyList(c, &count);
    NSMutableDictionary *propertyAttris = [NSMutableDictionary dictionaryWithCapacity:count];
    for (int i =0; i<count; i++) {
        objc_property_t property = propertys[i];
        const char *name = property_getName(property);
        const char *type = property_getAttributes(property);
        [propertyAttris setObject:[NSString stringWithUTF8String:type] forKey:[NSString stringWithUTF8String:name]];
    }
    if (propertys) {
        free(propertys);
    }
    return propertyAttris;
}

+ (NSDictionary<NSString *, NSString *> *)class_copyIvarAttributeList:(Class)c
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(c, &count);
    NSMutableDictionary *propertyAttris = [NSMutableDictionary dictionaryWithCapacity:count];
    for (int i =0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        const char *typeEncoding = ivar_getTypeEncoding(ivar);
        [propertyAttris setObject:[NSString stringWithUTF8String:typeEncoding] forKey:[NSString stringWithUTF8String:name]];
    }
    if (ivars) {
        free(ivars);
    }
    return propertyAttris;
}

@end
