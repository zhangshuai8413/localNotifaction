

//
//  LocalViewController.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/24.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "LocalViewController.h"
#import "JPUSHService.h"
@interface LocalViewController ()

@end

@implementation LocalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSDate *date  =[[NSDate alloc] initWithTimeIntervalSinceNow:5];
    
    NSDictionary  *  userInfo =@{@"hz://urlItemB":@"LocalViewController"};
    
    [JPUSHService setLocalNotification:date alertBody:@"niahao a " badge:4 alertAction:@"本地通知" identifierKey:nil userInfo:userInfo soundName:nil];
    

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
