//
//  JTNetwork.h
//  JustuManage
//
//  Created by zhubo on 16/6/3.
//  Copyright © 2016年 zhubo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JTNetwork : NSObject

+ (nullable JTNetwork *)manage;

/**
 *  GET请求方法（基于AFNetworking封装）
 *
 *  @param URLString  请求URL
 *  @param parameters 参数
 *  @param name       接口名称（用于打印区分接口）
 *  @param success    成功回调
 *  @param failure    失败回调
 */
- (void)GET:(nullable NSString *)URLString
 parameters:(nullable id)parameters
requestName:(nullable NSString *)name
    success:(nullable void (^)(_Nullable id responseObject))success
    failure:(nullable void (^)( NSError * _Nullable error))failure;

@end
