//
//  UIImageView+JTWebImage.h
//  JustuManage
//
//  Created by zhubo on 16/6/2.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+YYWebImage.h"


@interface UIImageView (JTWebImage)

/**
 *  根据指定的URL加载图片
 *
 *  @param imageURLString 图片URL
 *  @param placeholder    占位图
 */
- (void)jt_setImageWithURLString:(nullable NSString *)imageURLString
                     placeholder:(nullable UIImage *)placeholder;

/**
 *  根据指定的URL加载图片
 *
 *  @param imageURLString 图片URL
 *  @param placeholder    占位图
 *  @param completion     图片下载完成时的block回调（在主线程中）
 */
- (void)jt_setImageWithURL:(nullable NSString *)imageURLString
               placeholder:(nullable UIImage *)placeholder
                completion:(nullable YYWebImageCompletionBlock)completion;

/**
 *  根据指定的URL加载图片
 *
 *  @param imageURLString 图片URL
 *  @param placeholder    占位图
 *  @param options        在下载图片时可以指定的一些配置
 *  @param completion     图片下载完成时的block回调（在主线程中）
 */
- (void)jt_setImageWithURL:(nullable NSString *)imageURLString
               placeholder:(nullable UIImage *)placeholder
                   options:(YYWebImageOptions)options
                completion:(nullable YYWebImageCompletionBlock)completion;

@end
