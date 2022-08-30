//
//  UIImage+UIImage_Load.h
//  Lab_ImageNameDebug
//
//  Created by Samuel on 2019/1/22.
//  Copyright © 2019 ppy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 配合 lldb 命令 pin 打印 image name
 需安装Facebook/chisel ppytools
 */
@interface UIImage (LLDB_pin)

@end

NS_ASSUME_NONNULL_END
