//
//  TuiJianViewModel.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/17.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "TuiJianViewModel.h"

@implementation TuiJianViewModel

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
    [NetManager getTuiJianWithPage:tmpPage completionHandler:^(TuiJianModel *model, NSError *error) {
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
    TuiJianDataModel *model = self.dataList[row];
    return model.love_cover.yx_URL;
}

- (NSURL *)avaterURLForRow:(NSInteger)row {
    TuiJianDataModel *model = self.dataList[row];
    return  model.avatar.yx_URL;
}

- (NSString *)nickForRow:(NSInteger)row {
    TuiJianDataModel *model = self.dataList[row];
    return model.nick;
}

- (NSString *)titleForRow:(NSInteger)row {
    TuiJianDataModel *model = self.dataList[row];
    return model.title;
}

- (NSString *)status {
    return @"icon_living";
}

- (NSAttributedString *)viewNumForRow:(NSInteger)row {
    TuiJianDataModel *model = self.dataList[row];
    NSInteger integer = model.view.integerValue;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:(integer > 10000 ? [NSString stringWithFormat:@"%.1f万",integer / 10000.0] : [NSString stringWithFormat:@"%ld",integer]) attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed255:249 green:187 blue:180 alpha:255], NSFontAttributeName:[UIFont systemFontOfSize:13]}];
    
    NSTextAttachment *viewImg = [[NSTextAttachment alloc] init];
    viewImg.image = [UIImage imageNamed:@"icon_audience_num"];
    viewImg.bounds = CGRectMake(0, 0, 15, 9);
    
    NSAttributedString *str2 = [NSAttributedString attributedStringWithAttachment:viewImg];
    NSString *str = @" ";
    NSMutableAttributedString *mutStr = [[NSMutableAttributedString alloc] init];
    [mutStr appendAttributedString:str2];
    [mutStr appendString:str];
    [mutStr appendAttributedString:str1];
    
    return mutStr;
}
@end
