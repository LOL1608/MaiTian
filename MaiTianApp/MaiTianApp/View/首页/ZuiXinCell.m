//
//  ZuiXinCell.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/19.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "ZuiXinCell.h"

@implementation ZuiXinCell
- (UIImageView *)coverIV {
    if(_coverIV == nil) {
        _coverIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_coverIV];
        [_coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(0);
            make.height.equalTo(self.coverIV.mas_width).multipliedBy(0.7);
        }];
    }
    return _coverIV;
}

- (UIImageView *)avaterIV {
    if(_avaterIV == nil) {
        _avaterIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_avaterIV];
        [_avaterIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(-7);
            make.left.equalTo(4);
            make.size.equalTo(36);
        }];
        _avaterIV.layer.cornerRadius = 18;
        _avaterIV.clipsToBounds = YES;
    }
    return _avaterIV;
}

- (UILabel *)nickLB {
    if(_nickLB == nil) {
        _nickLB = [[UILabel alloc] init];
        [self.contentView addSubview:_nickLB];
        [_nickLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.avaterIV.mas_right).offset(5);
            make.top.equalTo(self.avaterIV.mas_top).offset(3);
            make.width.equalTo(65);
        }];
        _nickLB.font = [UIFont systemFontOfSize:13];
    }
    return _nickLB;
}

- (UILabel *)titleLB {
    if(_titleLB == nil) {
        _titleLB = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.nickLB);
            make.bottom.equalTo(self.avaterIV.mas_bottom).offset(-2);
            make.right.equalTo(-2);
        }];
        _titleLB.font = [UIFont systemFontOfSize:11];
        _titleLB.textColor = kRGBA(249, 187, 180, 1);
    }
    return _titleLB;
}

- (UIImageView *)statusIV {
    if(_statusIV == nil) {
        _statusIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_statusIV];
        [_statusIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(7);
            make.right.equalTo(0);
            make.width.equalTo(50);
        }];
    }
    return _statusIV;
}

- (UILabel *)viewLB {
    if(_viewLB == nil) {
        _viewLB = [[UILabel alloc] init];
        [self.contentView addSubview:_viewLB];
        [_viewLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-3);
            make.centerY.equalTo(self.nickLB.mas_centerY);
        }];
        _viewLB.textAlignment = NSTextAlignmentRight;
        _viewLB.font = [UIFont systemFontOfSize:10];
        _viewLB.textColor = [UIColor lightGrayColor];
    }
    return _viewLB;
}
@end
