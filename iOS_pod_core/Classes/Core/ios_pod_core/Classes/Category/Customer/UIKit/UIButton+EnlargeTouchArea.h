//
//  UIButton+EnlargeTouchArea.h
//  FuzeGameApp
//
//  Created by 索泽文 on 16/8/21.
//  Copyright © 2016年 fuzegame. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DY_EnlargeTouchArea)

- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

@property(nonatomic, assign) CGSize dy_touchAreaSize;

/// 由于在 其他module 的category 中，override 需要在 头文件中申明
/// @param point hitlocation
/// @param event touch
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event;
@end
