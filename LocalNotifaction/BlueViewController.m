//
//  BlueViewController.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/24.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "BlueViewController.h"
#import "GreenViewController.h"
@interface BlueViewController ()

@end

@implementation BlueViewController
- (IBAction)jumpGreenVc:(id)sender {
    GreenViewController *vc =[[GreenViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
