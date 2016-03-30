//
//  KCImagePickerManager.h
//  5dsyClient
//
//  Created by Frank on 16/3/24.
//  Copyright © 2016年 Kakao China. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^KCFinishPickingImageBlock)(UIImage *image);

/**
 *  拍照或从相册选择图片
 */
@interface KCImagePickerManager : NSObject <UINavigationControllerDelegate,UIImagePickerControllerDelegate>

/**
 *  选择完成的回调
 */
@property (nonatomic ,copy) KCFinishPickingImageBlock finishBlock;

- (void)showImagePickerControllerWithViewController:(UIViewController *)viewController
                                             finish:(KCFinishPickingImageBlock)finishBlock;

@end
