
//
//  HomeViewController.m
//  LocalNotifaction
//
//  Created by kakao on 16/3/24.
//  Copyright © 2016年 shuai zhang. All rights reserved.
//

#import "HomeViewController.h"
#import "LocalViewController.h"
#import "OrigeVC.h"
#import "KCImagePickerManager.h"
#import "HZURLManager.h"
#import "HZURLNavigation.h"
@interface HomeViewController ()
@property(nonatomic,strong) UIImage *image;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation HomeViewController
- (IBAction)jumpRoLocalNotication:(id)sender {
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"tiao" object:nil];
     UINavigationController * currentNav= [HZURLNavigation currentNavigationViewController];
    NSArray *oldViewCtrls= currentNav.childViewControllers;
    
    NSArray *newViewCtrls = nil;
      OrigeVC *oriVc=[[OrigeVC alloc] init];
      LocalViewController *local =[[LocalViewController alloc] init];
    
    NSArray *viewControllers =@[oriVc,local];
    newViewCtrls = [oldViewCtrls arrayByAddingObjectsFromArray:viewControllers];
//    [currentNav setViewControllers:newViewCtrls];
    [currentNav setViewControllers:newViewCtrls animated:YES];

//
//    [self.navigationController pushViewController:oriVc animated:YES];
//    [self.navigationController pushViewController:local animated:YES];
//    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpLocal:) name:@"bendi" object:@(110)];


}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    KCImagePickerManager *imagePicker =[[KCImagePickerManager alloc] init];
    [imagePicker showImagePickerControllerWithViewController:self finish:^(UIImage *image) {
        self.image=image;
        self.imageView.image=image;
    }];

}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
  
}
-(void)jumpLocal:(NSNotification*)notification {
    NSDictionary *userInfo =notification.userInfo;
    NSString *vcStr = userInfo.allKeys.firstObject;
    NSLog(@"notification--%@",notification);
    
    [HZURLManager pushViewControllerWithString:vcStr animated:YES];
//    OrigeVC *oriVc=[[OrigeVC alloc] init];
//    [self.navigationController pushViewController:oriVc animated:YES];
//  
//    LocalViewController *local =[[LocalViewController alloc] init];
//    [self.navigationController pushViewController:local animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
      NSLog(@"释放掉");
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
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
