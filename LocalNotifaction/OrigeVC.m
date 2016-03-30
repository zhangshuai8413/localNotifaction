//
//  OrigeVC.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/24.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "OrigeVC.h"
#import "LocalViewController.h"
@interface OrigeVC ()

@end

@implementation OrigeVC
- (IBAction)localNotication:(id)sender {
    
    LocalViewController  *Vc =[[LocalViewController alloc] init];
    [self.navigationController pushViewController:Vc animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor orangeColor];
    // Do any additional setup after loading the view.
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpLocal) name:@"bendi" object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(justJump) name:@"tiao" object:nil];
//
//    if (self.isTwo) {
//        [self performSelector:@selector(justJump) withObject:nil afterDelay:0];
//        self.isTwo=NO;
//    }
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
  
}
-(void)justJump{
    LocalViewController *local =[LocalViewController new];
    [self.navigationController pushViewController:local animated:YES];
        
}

-(void)jumpLocal{
    LocalViewController *local =[LocalViewController new];
    [self.navigationController pushViewController:local animated:YES];
    
}


-(void)dealloc{

    [[NSNotificationCenter defaultCenter]removeObserver:self ];
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
