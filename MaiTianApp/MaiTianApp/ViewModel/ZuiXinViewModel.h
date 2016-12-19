//
//  ZuiXinViewModel.h
//  MaiTianApp
//
//  Created by 小王 on 2016/12/19.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetManager.h"

//网络请求模式
typedef NS_ENUM(NSUInteger, RequestMode) {
    RequestModelMore,//加载更多
    RequestModelRefresh,//刷新页面
};

@interface ZuiXinViewModel : NSObject

/*********** 为View提供的支持方法和属性 ************/
@property (nonatomic) NSInteger rowNumber;
- (NSURL *)coverURLForRow:(NSInteger)row;
- (NSURL *)avaterURLForRow:(NSInteger)row;
- (NSString *)nickForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)status;
- (NSString *)viewNumForRow:(NSInteger)row;


/*********** 与Model层有关的方法和属性 ************/
@property (nonatomic, copy) NSMutableArray *dataList;
@property (nonatomic,assign) NSInteger page;
@property (nonatomic,assign, getter=isNoMoreData) BOOL noMoreData;
- (void)getDataWithRequestMode:(RequestMode)mode completionHandler:(void(^)(NSError *error))completionHandler;

@end
