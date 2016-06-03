//
//  JTNetwork.m
//  JustuManage
//
//  Created by zhubo on 16/6/3.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import "JTNetwork.h"
#import "JTHUD.h"
#import "AFNetworking.h"


@implementation JTNetwork

+ (JTNetwork *)manage
{
    static JTNetwork *jtNetwork;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        jtNetwork = [[JTNetwork alloc]init];
    });
    return jtNetwork;
}

/**
 *  检测网络
 */
- (void)checkNetwork
{
    [JTHUD show];
    AFNetworkReachabilityManager *manage = [AFNetworkReachabilityManager manager];
    if (manage.networkReachabilityStatus == AFNetworkReachabilityStatusNotReachable) {
        [JTHUD showInfoWithText:@"当前网络异常，请稍后再试！"];
        return;
    }
}

- (void)GET:(NSString *)URLString
 parameters:(nullable id)parameters
requestName:(nullable NSString *)name
    success:(nullable void (^)(_Nullable id responseObject))success
failure:(nullable void (^)( NSError  * _Nullable error))failure
{
    //检测网络
    [self checkNetwork];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:@"http://121.40.200.66/index.php/Home/"]];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [manager.requestSerializer setStringEncoding:NSUTF8StringEncoding];
    AFJSONResponseSerializer *serializer = [AFJSONResponseSerializer serializer];
    [serializer setRemovesKeysWithNullValues:YES];
    [manager setResponseSerializer:serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"text/html", @"application/json", nil];
    
    NSLog(@"\n====== %@ GET请求的参数和接口 ====== \n%@\n",name,URLString);
    [manager GET:URLString
      parameters:parameters
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
             NSLog(@"\n====== %@ GET请求返回的数据 ====== \n%@ \n",name,responseObject);
             success(responseObject);
             [JTHUD dismiss];
        
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
           NSString *msg = [error localizedDescription];
           if (msg == nil || msg.length == 0) {
               msg = @"服务器异常，请稍后再试！";
           }
           [JTHUD showErrorWithText:msg];
    }];
    
}

@end
