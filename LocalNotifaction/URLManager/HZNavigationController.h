//
//  HZNavigationController.h
//  ZHFramework
//
//  Created by xzh. on 15/8/25.
//  Copyright (c) 2015年 xzh. All rights reserved.
//  项目网址:https://github.com/GeniusBrother/HZURLManager
//
//  结合MVVM以及MVC优点的架构HZExtend:https://github.com/GeniusBrother/HZExtend
//  项目特点
//  1.解放VC:基于MVVM的思想，将数据处理放入ViewModel里从而减少控制器的压力，降低代码耦合.
//  2.网络请求:基于AFN自定义了贴切业务逻辑的网络请求框架.
//  3.缓存体系:基于TMCache定制与业务逻辑相符的缓存体系.
//  4.数据元组:基于FMDB实现了与表元组对应的数据模型.
//  5.URLManager:支持URL跳转
//  6.一些常用的基础类扩展.

#import <UIKit/UIKit.h>

@interface HZNavigationController : UINavigationController
/**
 *  是否开启侧滑
 */
@property(nonatomic, assign) BOOL swipeEnable;

/**
 *  当子控制器的数量<=改值时不触发侧滑手势,默认为1
 */
@property(nonatomic, assign) NSUInteger countOfNoPanChild;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com