//
//  ViewController.m
//  JustuManage
//
//  Created by zhubo on 16/6/2.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import "ViewController.h"
#import "JTHUD.h"
#import "JTNetwork.h"
#import "SVProgressHUD.h"
#import "UIImageView+JTWebImage.h"
#import "UIViewController+JTPhotoBrowser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [JTHUD showInfoWithText:@"dfsfsdfsdsfsfsfds"];
    
    self.view.userInteractionEnabled = YES;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    
    [imageView jt_setImageWithURLString:@"http://qiandong-img-test.b0.upaiyun.com/advertisement/a1a0932422e688cf4dab50b97e5bb071" placeholder:[UIImage imageNamed:@"error.png"]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 200, 200);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnbtn) forControlEvents:UIControlEventTouchUpInside];
    
    
    [[JTNetwork manage] GET:@"Advertisement/getThreeImgForIndexBanner" parameters:nil requestName:@"广告" success:^(id  _Nullable responseObject) {
        
        
    } failure:^(NSError * _Nullable error) {
        
        
    }];
    
}

- (void)btnbtn
{
//    JTPhotoBrowser *bbbb = [[JTPhotoBrowser alloc]initWithImage:nil URLString:@"http://qiandong-img-test.b0.upaiyun.com/advertisement/a1a0932422e688cf4dab50b97e5bb071"];
    IDMPhotoBrowser *bbbb = [UIViewController jtPhotoBroeserWithURL:@"http://qiandong-img-test.b0.upaiyun.com/advertisement/a1a0932422e688cf4dab50b97e5bb071" image:nil];
    [self presentViewController:bbbb animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
