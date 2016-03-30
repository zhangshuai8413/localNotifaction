//
//  HZViewController.m
//  ZHFramework
//
//  Created by xzh. on 15/8/21.
//  Copyright (c) 2015年 xzh. All rights reserved.
//

#import "HZViewController.h"

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (HZNavigationController *)nav
{
    if ([self.navigationController isKindOfClass:[HZNavigationController class]]) {
        return (HZNavigationController *)self.navigationController;
    }else {
        return nil;
    }
    
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com