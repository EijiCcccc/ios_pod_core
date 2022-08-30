//
//  UIImage+UIImage_Load.m
//  Lab_ImageNameDebug
//
//  Created by Samuel on 2019/1/22.
//  Copyright © 2019 ppy. All rights reserved.
//

#import "UIImage+LLDB_pin.h"
#import <objc/runtime.h>
#import "OCLogger.h"
@implementation UIImage (LLDB_pin)
#if DEBUG
+(void)load {
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        SwizzleClassMethod(self, @selector(imageNamed:), @selector(debug_imageNamed:));
        SwizzleInstanceMethod(self, @selector(initWithContentsOfFile:), @selector(debug_initWithContentsOfFile:));
    });
}

void SwizzleClassMethod(Class cls, SEL originSEL, SEL newSEL) {
    Method originMethod = class_getClassMethod(cls, originSEL);
    IMP originIMP = class_getMethodImplementation(cls, originSEL);
    const char *originTypeEncoding = method_getTypeEncoding(originMethod);
    
    Method newMethod = class_getClassMethod(cls, newSEL);
    IMP newIMP = class_getMethodImplementation(cls, newSEL);
    const char *newTypeEncoding = method_getTypeEncoding(newMethod);

    Class metaClass = objc_getMetaClass(class_getName(cls));
    BOOL isAdd = class_addMethod(metaClass, originSEL, newIMP, newTypeEncoding);
    if (isAdd) {
        class_replaceMethod(metaClass, newSEL, originIMP, originTypeEncoding);
    } else {
        method_exchangeImplementations(originMethod, newMethod);
    }
}

void SwizzleInstanceMethod(Class cls, SEL originSEL, SEL newSEL) {
    Method originMethod = class_getInstanceMethod(cls, originSEL);
    IMP originIMP = class_getMethodImplementation(cls, originSEL);
    const char *originTypeEncoding = method_getTypeEncoding(originMethod);
    
    Method newMethod = class_getInstanceMethod(cls, newSEL);
    IMP newIMP = class_getMethodImplementation(cls, newSEL);
    const char *newTypeEncoding = method_getTypeEncoding(newMethod);
    
    BOOL isAdd = class_addMethod(cls, originSEL, newIMP, newTypeEncoding);
    if (isAdd) {
        class_replaceMethod(cls, newSEL, originIMP, originTypeEncoding);
    } else {
        method_exchangeImplementations(originMethod, newMethod);
    }
}

- (nullable instancetype)debug_initWithContentsOfFile:(NSString *)path {
    UIImage *img = [self debug_initWithContentsOfFile:path];
    if (img) {
        img.accessibilityIdentifier = path;
    }
    CGFloat cgImageBytesPerRow = CGImageGetBytesPerRow(img.CGImage); //
    CGFloat cgImageHeight = CGImageGetHeight(img.CGImage); //
    NSUInteger size  = cgImageHeight * cgImageBytesPerRow;
    //NSLog(@"路径图片占用内存size:%.2fKB,name=%@",(unsigned long)size/1024.0,path); // 输出
    if (size/1024.0/1024.0 > 1) {
        logInfo(@"路径图是大图，图片占用内存size:%.2fKB,路径=%@",(unsigned long)size/1024.0,path); // 输出
    }
    return img;
}

+ (UIImage *)debug_imageNamed:(NSString *)name {
    UIImage *img = [UIImage debug_imageNamed:name];
    if (img) {
        img.accessibilityIdentifier = name;
    }
    
    CGFloat cgImageBytesPerRow = CGImageGetBytesPerRow(img.CGImage); //
    CGFloat cgImageHeight = CGImageGetHeight(img.CGImage); //
    NSUInteger size  = cgImageHeight * cgImageBytesPerRow;
    //NSLog(@"图片占用内存size:%.2fKB,name=%@",(unsigned long)size/1024.0,name); // 输出
    if (size/1024.0/1024.0 > 1) {
         // 输出
        logInfo(@"该图是大图，图片占用内存size:%.2fKB,name=%@",(unsigned long)size/1024.0,name);
        
    }
    return img;
}

#endif
@end
