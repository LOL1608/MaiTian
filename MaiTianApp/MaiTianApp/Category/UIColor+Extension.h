//
//  UIColor+Extension.h
//  day12_02 故事版中的表视图
//
//  Created by 小王 on 16/10/20.
//  Copyright © 2016年 小王. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

+(UIColor*)colorWithRed255:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha;

+(UIColor*)colorWithHex:(NSInteger)hex;

@end
