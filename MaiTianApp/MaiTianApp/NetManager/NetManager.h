//
//  NetManager.h
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "BaseNetworking.h"
#import "TuiJianModel.h"
#import "ZuiXinModel.h"

@interface NetManager : BaseNetworking

+ getTuiJianWithPage:(NSInteger)page completionHandler:(void(^)(TuiJianModel *model, NSError *error))completionHandler;

+ getZuiXinWithPage:(NSInteger)page completionHandler:(void(^)(ZuiXinModel *model, NSError *error))completionHandler;

@end
