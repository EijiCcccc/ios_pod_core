//
//  NSString+Extension.h
//  QuickFinanceTracker
//
//  Created by Jerry Ray on 3/6/15.
//  Copyright (c) 2015 雷一鸣. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extension)

- (CGFloat)adjustWidthWithHeight:(CGFloat)height font:(UIFont * _Nonnull)font;
- (CGFloat)adjustHeightWithWidth:(CGFloat)width font:(UIFont * _Nonnull)font;


@end
