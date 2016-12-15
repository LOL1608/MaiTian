//
//  NetManager.h
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "BaseNetworking.h"
#import "TuiJianModel.h"
@interface NetManager : BaseNetworking

+ getPage:(NSInteger)page completionHandler:(void(^)(TuiJianModel *model, NSError *error))completionHandler;

@end
