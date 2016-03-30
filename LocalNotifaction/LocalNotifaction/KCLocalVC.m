//
//  KCLocalVC.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/23.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "KCLocalVC.h"
#import "BlueViewController.h"
@interface KCLocalVC ()

@end

@implementation KCLocalVC
- (IBAction)jumpBlueVc:(id)sender {
    
    BlueViewController *Vc =[[BlueViewController alloc] init];
    [self.navigationController  pushViewController:Vc animated:YES];
    
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
