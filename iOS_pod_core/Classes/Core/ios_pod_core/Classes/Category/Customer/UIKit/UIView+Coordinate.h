//
//  UIView+Coordinate.h
//  miqu
//
//  Created by Solin on 2017/5/12.
//  Copyright © 2017年 CZK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Coordinate)

- (CGFloat)x NS_SWIFT_UNAVAILABLE("Use propety x instead.");
- (void)setX:(CGFloat)x NS_SWIFT_UNAVAILABLE("Use propety x instead.");

- (CGFloat)y NS_SWIFT_UNAVAILABLE("Use propety y instead.");
- (void)setY:(CGFloat)y NS_SWIFT_UNAVAILABLE("Use propety y instead.");

- (CGFloat)height NS_SWIFT_UNAVAILABLE("Use propety y instead.");
- (void)setHeight:(CGFloat)height NS_SWIFT_UNAVAILABLE("Use propety y instead.");

- (CGFloat)width NS_SWIFT_UNAVAILABLE("Use propety y instead.");
- (void)setWidth:(CGFloat)width NS_SWIFT_UNAVAILABLE("Use propety y instead.");

/**
 *  获取控件底部的纵坐标y
 */
- (CGFloat)bottom NS_SWIFT_UNAVAILABLE("UNAVAILABLE");
/**
 *  设置控件底部的纵坐标y
 */
- (void)setBottom:(CGFloat)bottom NS_SWIFT_UNAVAILABLE("UNAVAILABLE");


/**
 *  获取控件右边缘离父容器左边缘的边距
 */
- (CGFloat)right NS_SWIFT_UNAVAILABLE("UNAVAILABLE");
/**
 *  设置控件右边缘离父容器左边缘的边距
 */
- (void)setRight:(CGFloat)right NS_SWIFT_UNAVAILABLE("UNAVAILABLE");


- (CGFloat)centerX NS_SWIFT_UNAVAILABLE("Use propety center.x instead.");
- (void)setCenterX:(CGFloat)centerX NS_SWIFT_UNAVAILABLE("Use propety center.x instead.");


- (CGFloat)centerY NS_SWIFT_UNAVAILABLE("Use propety center.y instead.");
- (void)setCenterY:(CGFloat)centerY NS_SWIFT_UNAVAILABLE("Use propety center.y instead.");


///父视图中水平居中
- (void)setXToCenterHorizontally NS_SWIFT_UNAVAILABLE("UNAVAILABLE");
///父视图中垂直居中
- (void)setYToCenterVertically NS_SWIFT_UNAVAILABLE("UNAVAILABLE");


/**
 *  获取控件底部离父容器底部的边距
 */
- (CGFloat)bottomMargin NS_SWIFT_UNAVAILABLE("UNAVAILABLE");
/**
 *  设置控件底部离父容器底部的边距
 */
- (void)setBottomMargin:(CGFloat)bottomMargin NS_SWIFT_UNAVAILABLE("UNAVAILABLE");


/**
 *  获取控件右侧离父容器右边的边距
 */
- (CGFloat)rightMargin NS_SWIFT_UNAVAILABLE("UNAVAILABLE");
/**
 *  设置控件右侧离父容器右边的边距
 */
- (void)setRightMargin:(CGFloat)rightMargin NS_SWIFT_UNAVAILABLE("UNAVAILABLE");

///设置圆角
- (void)setupCornerRadius:(CGFloat)cornerRadius NS_SWIFT_UNAVAILABLE("Use propety cornerRadius instead.");
/**
 *  设置部分圆角(绝对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii NS_SWIFT_UNAVAILABLE("Use propety func roundedCorners instead.");
/**
 *  设置部分圆角(相对布局)
 *
 *  @param corners 需要设置为圆角的角 UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerAllCorners
 *  @param radii   需要设置的圆角大小 例如 CGSizeMake(20.0f, 20.0f)
 *  @param rect    需要设置的圆角view的rect
 */
- (void)addRoundedCorners:(UIRectCorner)corners
                withRadii:(CGSize)radii
                 viewRect:(CGRect)rect NS_SWIFT_UNAVAILABLE("Use propety x instead.");
///设置圆角
- (void)setupCornerRadius:(CGFloat)cornerRadius shouldRasterImage:(BOOL)shouldRasterImage NS_SWIFT_UNAVAILABLE("Use propety cornerRadius instead.");
///设置边框
- (void)setupBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth NS_SWIFT_UNAVAILABLE("Use propety borderColor borderWidth instead.");


@end
