//
//  NSObject+HzExtend.m
//  ZHFramework
//
//  Created by xzh. on 15/7/26.
//  Copyright (c) 2015年 xzh. All rights reserved.
//

#import "NSObject+HZExtend.h"

@implementation NSObject (HZExtend)
- (BOOL)isNoEmpty
{
    if ([self isKindOfClass:[NSNull class]])
    {
        return NO;
    }
    else if ([self isKindOfClass:[NSString class]])
    {
        return [(NSString *)self length] > 0;
    }
    else if ([self isKindOfClass:[NSData class]])
    {
        
        return [(NSData *)self length] > 0;
    }
    else if ([self isKindOfClass:[NSArray class]])
    {
        
        return [(NSArray *)self count] > 0;
    }
    else if ([self isKindOfClass:[NSDictionary class]])
    {
        
        return [(NSDictionary *)self count] > 0;
    }
    
    return YES;
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com