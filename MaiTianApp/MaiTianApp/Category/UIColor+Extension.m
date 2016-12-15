//
//  UIColor+Extension.m
//  day12_02 故事版中的表视图
//
//  Created by 小王 on 16/10/20.
//  Copyright © 2016年 小王. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

//将颜色的数值 转化成颜色类别中具体的点数位置
+(UIColor *)colorWithRed255:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha/255.0];
}

//美工给的 十六进制 颜色 转 十进制
+(UIColor *)colorWithHex:(NSInteger)hex {
    //0xff ff ff 00    hex
    NSInteger alpha = (hex & 0xff000000) >> 24;
    NSInteger red = (hex & 0x00ff0000) >>16;
    NSInteger green = (hex & 0xff00) >> 8;
    NSInteger blue = hex & 0xff;
    
    NSLog(@"%ld %ld %ld %ld",alpha,red,green,blue);
    return [UIColor colorWithRed255:red green:green blue:blue alpha:alpha];
}

@end
