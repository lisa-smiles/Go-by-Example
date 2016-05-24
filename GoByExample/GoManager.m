//
//  GoManager.m
//  GoByExample
//
//  Created by lisa on 16/5/16.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "GoManager.h"
#import "GoData.h"

@implementation GoManager

+ (NSArray *)getAllGoData:(NSDictionary *)params{
    
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSDictionary *dict in params) {
        GoData *data = [GoData new];
        data.name = dict[@"name"];
        data.id = dict[@"id"];
        [array addObject:data];
    }
    return [array copy];
}

@end
