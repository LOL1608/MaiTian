//
//  NetManager.m
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "NetManager.h"

@implementation NetManager

+(id)getPage:(NSInteger)page completionHandler:(void (^)(TuiJianModel *, NSError *))completionHandler {
    NSString *p = @"http://www.quanmin.tv/json/categories/beauty/list%@.json";
    NSString *path = !page ? [NSString stringWithFormat:p, @""] : [NSString stringWithFormat:p, [NSString stringWithFormat:@"_%ld",page]];
 
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([TuiJianModel parse:responseObj], error);
    }];
}

@end
