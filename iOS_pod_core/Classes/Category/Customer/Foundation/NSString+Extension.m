//
//  NSString+Extension.m
//  QuickFinanceTracker
//
//  Created by Jerry Ray on 3/6/15.
//  Copyright (c) 2015 雷一鸣. All rights reserved.
//

#import "NSString+Extension.h"
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@implementation NSString (Extension)

- (CGFloat)adjustHeightWithWidth:(CGFloat)width font:(UIFont *)font {
    return [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil].size.height;
}

- (CGFloat)adjustWidthWithHeight:(CGFloat)height font:(UIFont *)font {
    return [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil].size.width;
}

@end
