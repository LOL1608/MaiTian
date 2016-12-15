//
//  TuiJianModel.h
//  MaiTianApp
//
//  Created by 小王 on 2016/12/15.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TuiJianDataModel;

@interface TuiJianModel : NSObject
@property (nonatomic, assign) NSInteger pageCount;

@property (nonatomic, strong) NSArray<TuiJianDataModel *> *data;

@property (nonatomic, assign) NSInteger size;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, assign) NSInteger page;

@end
@interface TuiJianDataModel : NSObject

@property (nonatomic, copy) NSString *default_image;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, assign) NSInteger weight;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *category_name;

@property (nonatomic, copy) NSString *hidden;

@property (nonatomic, copy) NSString *year_type;

@property (nonatomic, copy) NSString *category_slug;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, copy) NSString *video;

@property (nonatomic, copy) NSString *beauty_cover;

@property (nonatomic, copy) NSString *recommend_image;

@property (nonatomic, copy) NSString *play_at;

@property (nonatomic, copy) NSString *app_shuffling_image;

@property (nonatomic, assign) NSInteger level;

@property (nonatomic, assign) NSInteger grade;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, copy) NSString *love_cover;

@property (nonatomic, copy) NSString *announcement;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, copy) NSString *view;

@property (nonatomic, copy) NSString *start_time;

@property (nonatomic, copy) NSString *create_at;

@property (nonatomic, copy) NSString *video_quality;

@property (nonatomic, assign) NSInteger category_id;

@property (nonatomic, assign) NSInteger like;

@property (nonatomic, assign) NSInteger screen;

@property (nonatomic, assign) NSInteger follow;

@end
