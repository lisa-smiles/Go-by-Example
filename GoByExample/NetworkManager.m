//
//  NetworkManager.m
//  GoByExample
//
//  Created by lisa on 16/5/15.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "NetworkManager.h"
#import "AFNetworking.h"

@implementation NetworkManager

+(void)sendRequest:(NSString *)urlStr wihtSuccess:(successBlock)success WithFailure:(failureBlock)failure{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
                
    }];
    
}
@end
