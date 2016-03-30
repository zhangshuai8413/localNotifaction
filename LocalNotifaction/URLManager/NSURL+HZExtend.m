//
//  NSURL+HZExtend.m
//  ZHFramework
//
//  Created by xzh. on 15/8/21.
//  Copyright (c) 2015年 xzh. All rights reserved.
//

#import "NSURL+HZExtend.h"
#import "NSObject+HZExtend.h"
#import "NSString+HZExtend.h"
@implementation NSURL (HZExtend)

- (NSDictionary *)queryDic
{
    return [self.absoluteString queryDic];
}


@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com