//
//  ViewController.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/23.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "ViewController.h"
#import "JPUSHService.h"
@interface ViewController ()
{
    CGRect _frame;
    
}
@end

@implementation ViewController
{
    UILocalNotification *_notification;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    int fixLength;
#ifdef __IPHONE_7_0
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0) {
        fixLength = 0;
    } else {
        fixLength = 20;
    }
#else
    fixLength = 20;
#endif
    _frame =
    CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - fixLength,
               self.view.frame.size.width, self.view.frame.size.height);
    
//    // Do any additional setup after loading the view, typically from a nib.
//  int fixLength;
//#ifdef ____IPHONE_7_0
//    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0) {
//       fixLength = 0;
//    }
//#else
//#endif
//    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setNotification:(id)sender {
    _notification =[JPUSHService setLocalNotification:self.notificationDatePicker.date alertBody:self.notificationBodyTextField.text badge:[self.notificationBadgeTextField.text intValue] alertAction:self.notificationButtonTextField.text identifierKey:self.notificationIdentifierTextField.text userInfo:nil soundName:nil];
    NSString *result ;
    if (_notification) {
        result  =@"设置本地通知成功";
    }else{
    result =@"设置本地通知失败";
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"设置"
                                                    message:result
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)clearAllNotification:(id)sender {
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"设置"
                               message:@"取消所有本地通知成功"
                              delegate:self
                     cancelButtonTitle:@"确定"
                     otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)clearLastNotification:(id)sender {
    NSString *alertMessage;
    if (_notification) {
        [JPUSHService deleteLocalNotification:_notification];
        _notification = nil;
        alertMessage = @"取消上一个通知成功";
    } else {
        alertMessage = @"不存在上一个设置通知";
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"设置"
                                                    message:alertMessage
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil, nil];
    [alert show];
}
@end
