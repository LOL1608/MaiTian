//
//  ZuiXinViewModel.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/19.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "ZuiXinViewModel.h"

@implementation ZuiXinViewModel

//Model
- (NSMutableArray *)dataList {
    if(_dataList == nil) {
        _dataList = [[NSMutableArray alloc] init];
    }
    return _dataList;
}

-(void)getDataWithRequestMode:(RequestMode)mode completionHandler:(void (^)(NSError *))completionHandler {
    NSUInteger tmpPage = 0;
    if (mode == RequestModelMore) {
        tmpPage = _page + 1;
    }
    [NetManager getZuiXinWithPage:tmpPage completionHandler:^(ZuiXinModel *model, NSError *error) {
        if (mode == RequestModelRefresh) {
            [self.dataList removeAllObjects];
            _noMoreData = NO;
        }
        if (model.data.count == 0) {
            _noMoreData = YES;
        }
        [self.dataList addObjectsFromArray:model.data];
        _page = tmpPage;
        !completionHandler ?: completionHandler(error);
    }];
}

//View
-(NSInteger)rowNumber {
    return self.dataList.count;
}

- (NSURL *)coverURLForRow:(NSInteger)row {
    ZuiXinDataModel *model = self.dataList[row];
    return model.thumb.yx_URL;
}

- (NSURL *)avaterURLForRow:(NSInteger)row {
    ZuiXinDataModel *model = self.dataList[row];
    return  model.avatar.yx_URL;
}

- (NSString *)nickForRow:(NSInteger)row {
    ZuiXinDataModel *model = self.dataList[row];
    return model.nick;
}

- (NSString *)titleForRow:(NSInteger)row {
    ZuiXinDataModel *model = self.dataList[row];
    return model.title;
}

- (NSString *)status {
    return @"icon_living";
}

- (NSString *)viewNumForRow:(NSInteger)row {
    ZuiXinDataModel *model = self.dataList[row];
    NSInteger integer = model.view.integerValue;
    
    NSString *str = integer > 10000 ? [NSString stringWithFormat:@"%.1f万 在看",integer / 10000.0] : [NSString stringWithFormat:@"%ld 在看",integer];
    return str;
}

@end
