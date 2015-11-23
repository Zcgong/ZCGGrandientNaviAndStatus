//
//  MITGrandientStutesBar.m
//  MobileOA_iPhone
//
//  Created by zhengcg on 15/6/18.
//  Copyright (c) 2015年 上海旻瑞信息技术有限公司. All rights reserved.
//

#import "ZCGGrandientStatusBar.h"

@implementation ZCGGrandientStatusBar
-(void)drawRect:(CGRect)rect{
    
    switch (_style) {
        case 1:
        {
            [self xdView];
            break;
        }
            
        default:
        {
            [self defaultView];
            break;
        }
            
    }
}
- (void)test{//用于获取颜色值
  [UIColor colorWithRed:0.887 green:0.817 blue:1.000 alpha:1.000];
  
}

- (void)xdView
{
    //	1. 定义渐变引用CGGradientRef
    CGGradientRef gradient;
    //	2. 定义色彩空间引用
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //	3. 定义渐变颜色组件
    //	  每四个数一组，分别对应r,g,b,透明度
    CGFloat components[] = {
        1,1 ,1 ,1,
        0.98,0.98,0.98,1,
    };
    //	4. 定义颜色渐变位置
    // 第一个颜色开始渐变的位置
    // 第二个颜色结束渐变的位置
    CGFloat locations[] = {0.0,1};
    
    //	5. 创建颜色渐进
    gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    
    //	6. 绘制线性渐进
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawLinearGradient(context, gradient, CGPointMake(self.frame.size.width/2 , 0), CGPointMake(self.frame.size.width/2, self.frame.size.height), kCGGradientDrawsBeforeStartLocation);
    
    //	7. 释放颜色空间
    CGColorSpaceRelease(colorSpace);
    //	8. 释放渐变引用
    CGGradientRelease(gradient);
}

- (void)defaultView
{
    //	1. 定义渐变引用CGGradientRef
    CGGradientRef gradient;
    //	2. 定义色彩空间引用
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //	3. 定义渐变颜色组件
    //	  每四个数一组，分别对应r,g,b,透明度
    
    CGFloat components[] = {
        0.0/255,119.0/255 ,183.0/255 ,1
    };
    //	4. 定义颜色渐变位置
    // 第一个颜色开始渐变的位置
    // 第二个颜色结束渐变的位置
    CGFloat locations[] = {0.0};
    
    //	5. 创建颜色渐进
    gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 1);
    
    //	6. 绘制线性渐进
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawLinearGradient(context, gradient, CGPointMake(self.frame.size.width/2 , 0), CGPointMake(self.frame.size.width/2, self.frame.size.height), kCGGradientDrawsBeforeStartLocation);
    
    //	7. 释放颜色空间
    CGColorSpaceRelease(colorSpace);
    //	8. 释放渐变引用
    CGGradientRelease(gradient);
}
@end
