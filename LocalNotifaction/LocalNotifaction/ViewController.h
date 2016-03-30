//
//  ViewController.h
//  LocalNotifaction
//
//  Created by kakao on 16/3/23.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *notificationBodyTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *notificationDatePicker;
@property (weak, nonatomic) IBOutlet UITextField *notificationButtonTextField;
@property (weak, nonatomic) IBOutlet UITextField *notificationIdentifierTextField;

@property (strong, nonatomic) IBOutlet UIView *backgroundView;

@property (weak, nonatomic) IBOutlet UITextField *notificationBadgeTextField;
- (IBAction)setNotification:(id)sender;

- (IBAction)clearAllNotification:(id)sender;
- (IBAction)clearLastNotification:(id)sender;

@end

