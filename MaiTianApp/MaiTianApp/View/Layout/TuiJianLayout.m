//
//  TuiJianLayout.m
//  MaiTianApp
//
//  Created by 小王 on 2016/12/13.
//  Copyright © 2016年 MaiTianApp. All rights reserved.
//

#import "TuiJianLayout.h"

@implementation TuiJianLayout

- (instancetype)init {
    if (self = [super init]) {
        self.minimumLineSpacing = 15;
        self.sectionInset = UIEdgeInsetsMake(0, 15, 15, 15);
        CGFloat width = kScreenW - 15 * 2;
        CGFloat height = width * kHDivW;
        self.itemSize = CGSizeMake(width, height);
    }
    return self;
}

@end
