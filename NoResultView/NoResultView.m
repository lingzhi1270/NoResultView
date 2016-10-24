//
//  NoResultView.m
//  NoResultView
//
//  Created by lingzhi on 2016/10/24.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import "NoResultView.h"
#import "UIColor+Extend.h"
//当前设备屏幕高度
#define UIScreenHeight ([[UIScreen mainScreen] bounds].size.height)
#define UIScreenWidth  ([[UIScreen mainScreen] bounds].size.width)
@implementation NoResultView
- (id)initWithTip:(NSString *)tip
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        //提示图
        UIImageView *tempImageView = [[UIImageView alloc] init];
        tempImageView.frame = CGRectMake((UIScreenWidth-107)/2, 80, 107, 107);
        tempImageView.image = [UIImage imageNamed:@"pic_sorry"];
        
        [self addSubview:tempImageView];
        
        //提示语
        UILabel *tempLabel = [[UILabel alloc] init];
        tempLabel.frame = CGRectMake(0, 197, UIScreenWidth, 14);
        tempLabel.backgroundColor = [UIColor clearColor];
        tempLabel.font = [UIFont systemFontOfSize:14.0f];
        tempLabel.textAlignment = NSTextAlignmentCenter;
        tempLabel.textColor = [UIColor getColor:@"666d75"];
        tempLabel.text = tip;
        [self addSubview:tempLabel];
        self.tipLabel = tempLabel;

        
        
    }
    return self;
    
}



- (id)initWithTip:(NSString *)tip AndButton:(NSString *)btnString
{
    
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        //提示图
        UIImageView *tempImageView = [[UIImageView alloc] init];
        tempImageView.frame = CGRectMake((UIScreenWidth-107)/2, 80, 107, 107);
        
        tempImageView.image = [UIImage imageNamed:@"pic_sorry"];
        [self addSubview:tempImageView];
        
        //提示语
        UILabel *tempLabel = [[UILabel alloc] init];
        tempLabel.frame = CGRectMake(0, 197, UIScreenWidth, 14);
        tempLabel.backgroundColor = [UIColor clearColor];
        tempLabel.font = [UIFont systemFontOfSize:14.0f];
        tempLabel.textAlignment = NSTextAlignmentCenter;
        tempLabel.textColor = [UIColor getColor:@"666d75"];
        tempLabel.text = tip;
        self.tipLabel = tempLabel;
        [self addSubview:tempLabel];
        
        //按钮
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake((UIScreenWidth-128)/2, 220, 128, 31)];
        [btn setTitle:btnString forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"store_select_btn_246x62"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"store_select_btn_246x62_press"] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;

    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
