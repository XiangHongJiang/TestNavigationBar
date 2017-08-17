//
//  UIImage+Extension.m
//  JYJ微博
//
//  Created by JYJ on 15/3/11.
//  Copyright (c) 2015年 JYJ. All rights reserved.
//

#import "UIImage+Extension.h"
#import <objc/message.h>



@implementation UIImage (Extension)


+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

/***********华丽的分割线**********/
#pragma mark - 老项目

+ (UIImage *)imageWithColor:(UIColor *)color
{
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    return [self imageWithColor:color rect:rect];
}

+ (UIImage *)imageWithColor:(UIColor *)color rect:(CGRect)rect
{
    
    // 1, 开启基于位图的图形上下文
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 2, 画一个color颜色的矩形框
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    // 3, 拿到图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 4, 关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
    
}

/***********华丽的分割线**********/

@end
