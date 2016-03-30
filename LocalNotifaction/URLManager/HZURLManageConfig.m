//
//  HZURLManageConfig.m
//  HZNetworkDemo
//
//  Created by xzh on 16/2/27.
//  Copyright © 2016年 xzh. All rights reserved.
//

#import "HZURLManageConfig.h"

@implementation HZURLManageConfig
singleton_m(Config)
- (instancetype)init
{
    self = [super init];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
    });
    return self;
}


@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com