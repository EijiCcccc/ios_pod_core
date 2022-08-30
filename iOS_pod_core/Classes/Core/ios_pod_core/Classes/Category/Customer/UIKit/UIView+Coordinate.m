//
//  UIView+Coordinate.m
//  miqu
//
//  Created by Solin on 2017/5/12.
//  Copyright © 2017年 CZK. All rights reserved.
//

#import "UIView+Coordinate.h"

@implementation UIView (Coordinate)

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}



- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.x, y, self.width, self.height);
}



- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.x, self.y, self.width, height);
}



- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.x, self.y, width, self.height);
}



- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}
- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}
- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}



- (CGFloat)centerX
{
    return self.center.x;
}
- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}



- (CGFloat)centerY
{
    return self.center.y;
}
- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}



- (CGFloat)bottomMargin {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置水平居中，必须先addSubview", __func__);
    }
    return self.superview.height - self.height - self.y;
}

- (void)setBottomMargin:(CGFloat)bottomMargin {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置水平居中，必须先addSubview", __func__);
    }
    self.y = self.superview.height - self.height - bottomMargin;
}



- (void)setXToCenterHorizontally {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置水平居中，必须先addSubview", __func__);
    }
    self.x = (self.superview.width - self.width) / 2.0;
}

- (void)setYToCenterVertically {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置垂直居中，必须先addSubview", __func__);
    }
    self.y = (self.superview.height - self.height) / 2.0;
}



- (CGFloat)rightMargin {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置垂直居中，必须先addSubview", __func__);
    }
    return self.superview.width - self.width - self.x;
}

- (void)setRightMargin:(CGFloat)rightMargin {
    if (self.superview == nil) {
        NSAssert(NO, @"要用方法%s快捷设置垂直居中，必须先addSubview", __func__);
    }
    self.x = self.superview.width - self.width - rightMargin;
}



- (void)setupCornerRadius:(CGFloat)cornerRadius {
    [self setupCornerRadius:cornerRadius shouldRasterImage:NO];
}

- (void)setupCornerRadius:(CGFloat)cornerRadius shouldRasterImage:(BOOL)shouldRasterImage {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.shouldRasterize = shouldRasterImage;
    self.layer.rasterizationScale = [[UIScreen mainScreen] scale];
}

- (void)setupBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}

/**
 *  设置部分圆角(绝对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii {
    
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    
    self.layer.mask = shape;
}

/**
 *  设置部分圆角(相对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 *  @param rect    需要设置的圆角view的rect
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii
                 viewRect:(CGRect)rect {
    
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    
    self.layer.mask = shape;
}

@end
