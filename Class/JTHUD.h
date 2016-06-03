//
//  JTHUD.h
//  JustuManage
//
//  Created by zhubo on 16/6/2.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTHUD : NSObject

+ (void)show;

+ (void)showWithText:(NSString *)text;

+ (void)showInfoWithText:(NSString *)text;

+ (void)showSuccessWithText:(NSString *)text;

+ (void)showErrorWithText:(NSString *)text;

+ (void)dismiss;

+ (void)dismissWithDelay:(NSTimeInterval)delay;



@end
