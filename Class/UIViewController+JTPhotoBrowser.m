//
//  UIViewController+JTPhotoBrowser.m
//  JustuManage
//
//  Created by zhubo on 16/6/3.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import "UIViewController+JTPhotoBrowser.h"

@implementation UIViewController (JTPhotoBrowser)

+ (IDMPhotoBrowser *)jtPhotoBroeserWithURL:(NSString *)url image:(UIImage *)image
{
    IDMPhoto *idmPhoto = [[IDMPhoto alloc]initWithImage:image];
    idmPhoto.photoURL = [NSURL URLWithString:url];
    IDMPhotoBrowser *idmPhotoBroweser = [[IDMPhotoBrowser alloc]initWithPhotos:@[idmPhoto]];
    idmPhotoBroweser.disableVerticalSwipe = NO;
    idmPhotoBroweser.displayToolbar = NO;
    idmPhotoBroweser.autoHideInterface = NO;
    return idmPhotoBroweser;
}


@end
