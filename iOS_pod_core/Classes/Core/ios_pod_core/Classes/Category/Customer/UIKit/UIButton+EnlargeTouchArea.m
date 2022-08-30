//
//  UIButton+EnlargeTouchArea.m
//  FuzeGameApp
//
//  Created by 索泽文 on 16/8/21.
//  Copyright © 2016年 fuzegame. All rights reserved.
//

#import "UIButton+EnlargeTouchArea.h"
#import <objc/runtime.h>

@implementation UIButton (DY_EnlargeTouchArea)

static char topNameKey;
static char rightNameKey;
static char bottomNameKey;
static char leftNameKey;
static char dyTouchAreaKey;

- (void)setDy_touchAreaSize:(CGSize)dy_touchAreaSize {
    objc_setAssociatedObject(self, &dyTouchAreaKey, [NSValue valueWithCGSize:dy_touchAreaSize], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGSize)dy_touchAreaSize {
    NSValue *value = objc_getAssociatedObject(self, &dyTouchAreaKey);
    if (value != nil) {
        return [value CGSizeValue];
    } else {
        return [self bounds].size;
    }
}

- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left
{
    objc_setAssociatedObject(self, &topNameKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightNameKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomNameKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftNameKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)enlargedRect
{
    NSNumber *topEdge = objc_getAssociatedObject(self, &topNameKey);
    NSNumber *rightEdge = objc_getAssociatedObject(self, &rightNameKey);
    NSNumber *bottomEdge = objc_getAssociatedObject(self, &bottomNameKey);
    NSNumber *leftEdge = objc_getAssociatedObject(self, &leftNameKey);
    if (topEdge && rightEdge && bottomEdge && leftEdge)
    {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    } else {
        return self.bounds;
    }
}

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event
{
    
    if (self.isHidden) { return nil; }
    
    if (CGSizeEqualToSize([self dy_touchAreaSize], self.bounds.size) == false){
        CGFloat largerWidth = MAX(self.bounds.size.width, [self dy_touchAreaSize].width);
        CGFloat largerHeight = MAX(self.bounds.size.height, [self dy_touchAreaSize].height);
        CGFloat dx = (self.bounds.size.width - largerWidth) / 2.0;
        CGFloat dy = (self.bounds.size.height - largerHeight) / 2.0;
        CGRect newRect = CGRectInset(self.bounds, dx, dy);
        if (CGRectContainsPoint(newRect, point)) {
            return self;
        }
    }
    
    CGRect rect = [self enlargedRect];
    if (CGRectEqualToRect(rect, self.bounds)) {
        return [super hitTest:point withEvent:event];
    }
    return CGRectContainsPoint(rect, point) ? self : nil;
}

@end
