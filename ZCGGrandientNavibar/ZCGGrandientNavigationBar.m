//
//  MITGrandientNavigationBar.m
//  MobileOA_iPhone
//
//  Created by zhengcg on 15/6/18.
//  Copyright (c) 2015年 上海旻瑞信息技术有限公司. All rights reserved.
//

#import "ZCGGrandientNavigationBar.h"
#import "ZCGGrandientStutesBar.h"
@implementation ZCGGrandientNavigationBar
{
    ZCGGrandientStutesBar* stutesBar;
}
- (instancetype)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
  }
  return self;
}

///注意只设置该渐变是无法将状态栏包含在内的
- (void)drawRect:(CGRect)rect{
    NSInteger style = 1;
    
    switch (style) {
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
- (void)xdView
{
    //	1. 定义渐变引用CGGradientRef
    CGGradientRef gradient;
    //	2. 定义色彩空间引用
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //	3. 定义渐变颜色组件
    //	  每四个数一组，分别对应r,g,b,透明度
    CGFloat components[] = {
        0.980,0.980 ,0.980 ,1,
        0.89,0.89,0.89,1,
        0.75,0.75 ,0.75 ,1
    };
    //	4. 定义颜色渐变位置
    // 第一个颜色开始渐变的位置
    // 第二个颜色结束渐变的位置
    CGFloat locations[] = {0.0,0.5,1};
    
    //	5. 创建颜色渐进
    gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 3);
    
    //	6. 绘制线性渐进
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawLinearGradient(context, gradient, CGPointMake(self.frame.size.width/2 , 0), CGPointMake(self.frame.size.width/2, self.frame.size.height), kCGGradientDrawsBeforeStartLocation);
    
    //	7. 释放颜色空间
    CGColorSpaceRelease(colorSpace);
    //	8. 释放渐变引用
    CGGradientRelease(gradient);
}

@end
