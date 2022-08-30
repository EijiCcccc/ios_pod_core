//
//  UITabBar+badge.m
//  FuzeGameApp
//
//  Created by 索泽文 on 16/4/6.
//  Copyright © 2016年 fuzegame. All rights reserved.
//

#import "UITabBar+badge.h"
#define TabbarItemNums 4.0 //tabbar的数量
#define RedBadgeColor [UIColor colorWithRed:253.0 / 255.0 green:63.0 / 255.0 blue:81.0 / 255.0 alpha:1.0] // 小红点颜色

@implementation UITabBar (badge)

//显示小红点
- (void)showBadgeOnItemIndex:(int)index{
    //移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    //新建小红点
    UIView *badgeView = [[UIView alloc]init];
    badgeView.tag = 888 + index;
    badgeView.layer.cornerRadius = 4.5;
    badgeView.backgroundColor = RedBadgeColor;
    CGRect tabFrame = self.frame;
    
    //小红点位置
    float percentX = (index +0.6) / TabbarItemNums;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
//    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, 5, 9, 9);//圆形大小为9
    [self addSubview:badgeView];
}

//隐藏小红点
- (void)hideBadgeOnItemIndex:(int)index{
    //移除小红点
    [self removeBadgeOnItemIndex:index];
}

//移除小红点
- (void)removeBadgeOnItemIndex:(int)index{
    //按照tag值进行移除
    for (UIView *subView in self.subviews) {
        if (subView.tag == 888 + index) {
            [subView removeFromSuperview];
        }
    }
}

- (void)showUnreadCountBadgeOnItemIndex:(int)index {
    UILabel *unreadCountOnTabBarLabel = [[UILabel alloc]init];
    unreadCountOnTabBarLabel.font = [UIFont systemFontOfSize:10];
    unreadCountOnTabBarLabel.textColor = [UIColor whiteColor];
    unreadCountOnTabBarLabel.textAlignment = NSTextAlignmentCenter;
    unreadCountOnTabBarLabel.backgroundColor = RedBadgeColor;
    unreadCountOnTabBarLabel.layer.borderColor = [UIColor whiteColor].CGColor;
    unreadCountOnTabBarLabel.layer.borderWidth = 1.0;
    unreadCountOnTabBarLabel.layer.cornerRadius = 9.0;
    unreadCountOnTabBarLabel.tag = 999 + index;
    CGRect tabFrame = self.frame;
    
    float percentX = (index +0.6) / TabbarItemNums;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    unreadCountOnTabBarLabel.frame = CGRectMake(x, 3, 18, 18);//圆形大小为18
    [self addSubview:unreadCountOnTabBarLabel];
}

@end
