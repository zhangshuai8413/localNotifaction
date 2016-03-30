//
//  Macros.h
//  5dsyClient
//
//  Created by Frank on 15/11/16.
//  Copyright © 2015年 Kakao China. All rights reserved.
//

#ifndef Macros_h
#define Macros_h

#import <UIKit/UIKit.h>

#pragma mark - 单例

/**
 *  AppDelegate
 */
#define SharedAppDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

/**
 *  通知中心
 */
#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]

/**
 *  NSUserDefaults
 */
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

/**
 *  mainBundle
 */
#define MAIN_BUNDLE [NSBundle mainBundle]


#pragma mark - 界面部分
//是否是iPhone4s的尺寸
#define IPHONE4S (CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(320, 480)))
//导航条高度
#define NAV_HEIGHT 44
//导航条+状态条高度
#define TOP_BAR_HEIGHT 64
//屏幕宽度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
//屏幕高度
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
//去掉导航条的屏幕高度
#define SCREEN_HEIGHT_NONAV ([UIScreen mainScreen].bounds.size.height-64)
//去掉导航条和tabbar的屏幕高度
#define SCREEN_HEIGHT_NOBAR ([UIScreen mainScreen].bounds.size.height-64-49)
//RGB颜色
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.000]
//RGBA颜色
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
//是否IOS8
#define IOS8 ([[[UIDevice currentDevice]systemVersion] floatValue] >= 8.0)
//屏幕宽度比，以iPhone6的375为基准
#define SCREEN_WIDTH_SCALE ([UIScreen mainScreen].bounds.size.width / 375.0f)
//默认的背景色
#define DEFAULT_BACKGROUND_COLOR RGBCOLOR(241, 241, 241)

#pragma mark - 路径
#define kHomePath        NSHomeDirectory()
#define kCachePath      [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches"]
#define kDocumentFolder [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define kDocumentFolder2 [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]
#define kLibraryPath [NSHomeDirectory() stringByAppendingPathComponent:@"Library"]
#define kTempPath    NSTemporaryDirectory()


//角度转换为弧度
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

//DEBUG时打印log
#ifdef DEBUG
#define KCLog(FORMAT,...) fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#    define KCLog(...) /* */
#endif

static inline UIWindow * AppKeyWindow() {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    if (!keyWindow) {
        keyWindow = [UIApplication sharedApplication].windows[0];
    }
    return keyWindow;
}

//左右边距
#define LEFT_MARGIN 8

//垂直方向的view间距
#define VIEW_MARGIN 5

static const CGFloat kTitleFontSize = 20;
//写贴按钮宽度
static const CGFloat kPostButtonWidth = 60;
//已点过赞的标志位
static NSString * const kErrorThumbUpID = @"0";
//colleciton view边距
static const CGFloat kPaddingOfItems = 5;
//5dsy官网地址
static NSString * const kAuthCallBackUrl = @"http://www.5dsy.cn";
//不分页的默认页码
static NSString * const kDefaultPageIndex = @"1";
//分页的初始页码
static const NSInteger kInitialPageIndex = 0;
//推荐游戏的类别码
static NSString * const kRecommendGameTypeCode = @"1000001";
//banner占位图
static NSString * const kDefaultBannerImage = @"default_banner";
//用户头像占位图
static NSString * const kDefaultUserIconImage = @"default_user_icon";
//新闻图片占位图
static NSString * const kDefaultNewsImage = @"default_news";
//新闻图片占位图
static NSString * const kDefaultGameImage = @"default_banner";

#define DEFAULT_BANNER_IMAGE [UIImage imageNamed:kDefaultBannerImage]

#define DEFAULT_USER_ICON_IMAGE [UIImage imageNamed:kDefaultUserIconImage]

#define DEFAULT_NEWS_IMAGE [UIImage imageNamed:kDefaultNewsImage]

#define DEFAULT_GAME_IMAGE [UIImage imageNamed:kDefaultNewsImage]

#define SHARE_IMAGE [UIImage imageNamed:kDefaultUserIconImage]
//是否显示过intro view
static NSString * const kIntroViewShowed = @"IntroViewShowed";
//娱乐分享的url前缀
static NSString * const kEntShareBaseUrl = @"http://www.5dsy.cn/ent/";
//论坛分享的url前缀
static NSString * const kTopicShareBaseUrl = @"http://www.5dsy.cn/topic/";
//750宽图片url的后缀
static NSString * const kArticleImageUrlSuffix = @"@!article";
//250宽图片url的后缀
static NSString * const kThumbImageUrlSuffix = @"@!thumb";
//150宽图片url的后缀
static NSString * const kAvatarImageUrlSuffix = @"@!avatar";
//应用版本
#define APP_VERSION ([[MAIN_BUNDLE infoDictionary] objectForKey:@"CFBundleShortVersionString"])
//gif后缀
static NSString * const kGifImageSuffix = @".gif";
//dispatch_after
static inline void dispatch_on_main_queue_after(CGFloat second, dispatch_block_t block)
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(second * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

/*!
 Creates a __weak version of the variable provided,
 which can later be safely used or converted into strong variable via @strongify.
 */
#define weakify(var) \
try {} @catch (...) {} \
__weak __typeof__(var) var ## _weak = var;

/*!
 Creates a strong shadow reference of the variable provided.
 Variable must have previously been passed to @weakify.
 */
#define strongify(var) \
try {} @catch (...) {} \
__strong __typeof__(var) var = var ## _weak;

#endif /* Macros_h */
