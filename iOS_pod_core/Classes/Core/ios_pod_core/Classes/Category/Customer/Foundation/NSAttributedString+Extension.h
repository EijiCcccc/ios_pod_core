//
//  NSMutableAttributedString+Extension.h
//  iWantMarry
//
//  Created by leiyiming on 3/21/16.
//  Copyright © 2016 CZK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (Extension)

- (CGFloat)adjustHeightWithWidth:(CGFloat)width;
- (CGFloat)adjustWidthWithHeight:(CGFloat)height;

@end
