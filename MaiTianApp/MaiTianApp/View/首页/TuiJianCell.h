//
//  TuiJianCell.h
//  MaiTianApp
//
//  Created by 小王 on 2016/12/13.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TuiJianCell : UICollectionViewCell
@property (nonatomic) UIImageView *coverIV;
@property (nonatomic) UIImageView *avaterIV;
@property (nonatomic) UILabel *nickLB;
@property (nonatomic) UILabel *titleLB;

@property (nonatomic) UIView *blackMaskView;//右上角黑色底板

@property (nonatomic) UIImageView *statusIV;//视频状态 是直播还是回看
@property (nonatomic) UILabel *viewLB;//观看人数




@end
