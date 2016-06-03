//
//  UIImageView+JTWebImage.m
//  JustuManage
//
//  Created by zhubo on 16/6/2.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import "UIImageView+JTWebImage.h"

@implementation UIImageView (JTWebImage)

- (void)jt_setImageWithURLString:(NSString *)imageURLString
                     placeholder:(UIImage *)placeholder
{
    [self yy_setImageWithURL:[NSURL URLWithString:imageURLString]
                 placeholder:placeholder
                     options:YYWebImageOptionShowNetworkActivity | YYWebImageOptionAllowBackgroundTask |        YYWebImageOptionProgressiveBlur
                  completion:nil];
}

- (void)jt_setImageWithURL:(NSString *)imageURLString
               placeholder:(UIImage *)placeholder
                completion:(YYWebImageCompletionBlock)completion
{
    [self yy_setImageWithURL:[NSURL URLWithString:imageURLString]
                 placeholder:placeholder
                     options:YYWebImageOptionShowNetworkActivity | YYWebImageOptionAllowBackgroundTask |        YYWebImageOptionProgressiveBlur
                  completion:completion];
}

- (void)jt_setImageWithURL:(NSString *)imageURLString
               placeholder:(UIImage *)placeholder
                   options:(YYWebImageOptions)options
                completion:(YYWebImageCompletionBlock)completion
{
    [self yy_setImageWithURL:[NSURL URLWithString:imageURLString]
                 placeholder:placeholder
                     options:options
                  completion:completion];
}

@end
