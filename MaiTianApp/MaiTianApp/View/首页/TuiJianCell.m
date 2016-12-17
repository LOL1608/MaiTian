//
//  TuiJianCell.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/13.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "TuiJianCell.h"

@implementation TuiJianCell
//-(instancetype)init {
//    if (self = [super init]) {
//        self.contentView.backgroundColor = [UIColor redColor];
//        self.layer.cornerRadius = 10;
//        self.clipsToBounds = YES;
//    }
//    return self;
//}

- (UIImageView *)coverIV {
    if(_coverIV == nil) {
        _coverIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_coverIV];
        CGFloat width = kScreenW - 15 * 2;
        [_coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(0);
            make.height.equalTo(width);
        }];
    }
    return _coverIV;
}

- (UIImageView *)avaterIV {
    if(_avaterIV == nil) {
        _avaterIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_avaterIV];
        [_avaterIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(-15);
            make.left.equalTo(15);
            make.size.equalTo(52);
        }];
        _avaterIV.layer.cornerRadius = 26;
        _avaterIV.clipsToBounds = YES;
    }
    return _avaterIV;
}

- (UILabel *)nickLB {
    if(_nickLB == nil) {
        _nickLB = [[UILabel alloc] init];
        [self.contentView addSubview:_nickLB];
        [_nickLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.avaterIV.mas_right).offset(15);
            make.bottom.equalTo(self.avaterIV.mas_centerY).offset(-3);
        }];
        _nickLB.font = [UIFont systemFontOfSize:15];
    }
    return _nickLB;
}

- (UILabel *)titleLB {
    if(_titleLB == nil) {
        _titleLB = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.nickLB);
            make.top.equalTo(self.avaterIV.mas_centerY).offset(5);
        }];
        _titleLB.font = [UIFont systemFontOfSize:13];
        _titleLB.textColor = [UIColor colorWithRed255:249 green:187 blue:180 alpha:255];
    }
    return _titleLB;
}

- (UIView *)blackMaskView {
    if(_blackMaskView == nil) {
        _blackMaskView = [[UIView alloc] init];
        [self.contentView addSubview:_blackMaskView];
        [_blackMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-11);
            make.top.equalTo(18);
            make.height.equalTo(23);
            make.width.equalTo(self.blackMaskView.mas_height).multipliedBy(211/46.0);
        }];
        _blackMaskView.layer.cornerRadius = 5;
        _blackMaskView.clipsToBounds = YES;
        _blackMaskView.backgroundColor = [UIColor colorWithRed255:0 green:0 blue:0 alpha:100];
    }
    return _blackMaskView;
}

- (UIImageView *)statusIV {
    if(_statusIV == nil) {
        _statusIV = [[UIImageView alloc] init];
        [self.blackMaskView addSubview:_statusIV];
        [_statusIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.left.equalTo(0);
            make.width.equalTo(self.blackMaskView.mas_width).multipliedBy(0.4);
        }];
    }
    return _statusIV;
}

- (UILabel *)viewLB {
    if(_viewLB == nil) {
        _viewLB = [[UILabel alloc] init];
        [self.blackMaskView addSubview:_viewLB];
        [_viewLB mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.top.bottom.equalTo(0);
            make.right.equalTo(0);
            make.left.equalTo(self.statusIV.mas_right);
            make.centerY.equalTo(0);
        }];
//        _viewLB.font = [UIFont systemFontOfSize:11];
        _viewLB.textAlignment = NSTextAlignmentCenter;
//        _viewLB.textColor = [UIColor colorWithRed255:249 green:187 blue:180 alpha:255];
    }
    return _viewLB;
}


@end
