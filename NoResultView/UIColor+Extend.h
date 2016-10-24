//
//  UIColor+Extend.h
//  NoResultView
//
//  Created by lingzhi on 2016/10/24.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
// 扩展UIColor类
@interface UIColor (Extend)
/*
 将十六进制的颜色值转为objective-c的颜色
 */
+ (id)getColor:(NSString *) hexColor;



+ (UIColor *)randomColor;
@end
