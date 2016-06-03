//
//  UIViewController+JTPhotoBrowser.h
//  JustuManage
//
//  Created by zhubo on 16/6/3.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IDMPhotoBrowser.h"

@interface UIViewController (JTPhotoBrowser)

+ (IDMPhotoBrowser *)jtPhotoBroeserWithURL:(NSString *)url image:(UIImage *)image;


@end
