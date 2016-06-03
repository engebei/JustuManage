//
//  JTHUD.m
//  JustuManage
//
//  Created by zhubo on 16/6/2.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import "JTHUD.h"
#import "SVProgressHUD.h"

@implementation JTHUD

+ (void)showManage
{
    static JTHUD *jtHUD;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        jtHUD = [[JTHUD alloc]init];
    });
}


+ (void)show
{
    [self showManage];
    [SVProgressHUD show];
}

+ (void)showWithText:(NSString *)text
{
    [self showManage];
    [SVProgressHUD showWithStatus:text];
}

+ (void)showInfoWithText:(NSString *)text
{
    [self showManage];
    [SVProgressHUD showInfoWithStatus:text];
}

+ (void)showSuccessWithText:(NSString *)text
{
    [self showManage];
    [SVProgressHUD showSuccessWithStatus:text];
}

+ (void)showErrorWithText:(NSString *)text
{
    [self showManage];
    [SVProgressHUD showErrorWithStatus:text];
}

+ (void)dismiss
{
    [self showManage];
    [SVProgressHUD dismiss];
}

+ (void)dismissWithDelay:(NSTimeInterval)delay
{
    [self showManage];
    [SVProgressHUD dismissWithDelay:delay];
}


@end
