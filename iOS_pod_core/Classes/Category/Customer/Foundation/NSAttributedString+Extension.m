//
//  NSAttributedString+Extension.m
//  iWantMarry
//
//  Created by leiyiming on 3/21/16.
//  Copyright © 2016 CZK. All rights reserved.
//

#import "NSAttributedString+Extension.h"

@implementation NSAttributedString (Extension)

- (CGFloat)adjustHeightWithWidth:(CGFloat)width {
    return [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size.height;
}

- (CGFloat)adjustWidthWithHeight:(CGFloat)height {
    return [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size.width;
}

@end
