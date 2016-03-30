//
//  KCImagePickerManager.m
//  5dsyClient
//
//  Created by Frank on 16/3/24.
//  Copyright © 2016年 Kakao China. All rights reserved.
//

#import "KCImagePickerManager.h"
#import "Macros.h"
#import <objc/runtime.h>

static char kAssociationViewControllerKey;

@interface KCImagePickerManager()

@property (nonatomic, weak) UIViewController *viewController;

@end

@implementation KCImagePickerManager

- (void)dealloc
{
    KCLog(@"KCImagePickerManager dealloc");
}

- (void)showImagePickerControllerWithViewController:(UIViewController *)viewController finish:(KCFinishPickingImageBlock)finishBlock
{
    self.viewController = viewController;
    objc_setAssociatedObject(viewController, &kAssociationViewControllerKey, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.finishBlock = finishBlock;
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *albumAction = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        imagePickerController.allowsEditing = YES;
        imagePickerController.delegate = self;
        [viewController presentViewController:imagePickerController animated:YES completion:NULL];
    }];
    UIAlertAction *phontAction = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
        if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera])
        {
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.allowsEditing = YES;
            imagePickerController.delegate = self;
            imagePickerController.sourceType = sourceType;
            [viewController presentViewController:imagePickerController animated:YES completion:NULL];
        }
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        objc_setAssociatedObject(_viewController, &kAssociationViewControllerKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }];
    [actionSheet addAction:albumAction];
    [actionSheet addAction:phontAction];
    [actionSheet addAction:cancelAction];
    [viewController presentViewController:actionSheet animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [_viewController dismissViewControllerAnimated:YES completion:nil];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    if (self.finishBlock) {
        self.finishBlock(image);
    }
    objc_setAssociatedObject(_viewController, &kAssociationViewControllerKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [_viewController dismissViewControllerAnimated:YES completion:nil];
    objc_setAssociatedObject(_viewController, &kAssociationViewControllerKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
