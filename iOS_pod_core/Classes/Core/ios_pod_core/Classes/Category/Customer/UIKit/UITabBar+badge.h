//
//  UITabBar+badge.h
//  FuzeGameApp
//
//  Created by 索泽文 on 16/4/6.
//  Copyright © 2016年 fuzegame. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index;//显示小红点

- (void)hideBadgeOnItemIndex:(int)index;//隐藏小红点

@end
