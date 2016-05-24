//
//  NetworkManager.h
//  GoByExample
//
//  Created by lisa on 16/5/15.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^successBlock) (id responseObject);

typedef void (^failureBlock) (NSError *error);

@interface NetworkManager : NSObject

+ (void)sendRequest:(NSString *)urlStr wihtSuccess:(successBlock)success WithFailure:(failureBlock)failure;

@end
