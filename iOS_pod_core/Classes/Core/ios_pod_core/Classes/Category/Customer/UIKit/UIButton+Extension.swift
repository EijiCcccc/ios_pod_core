//
//  UIButton+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import UIKit

public extension UIButton {
    enum ImageTitleRelativeLocation {
        case imageUpTitleDown
        case imageDownTitleUp
        case imageLeftTitleRight
        case imageRightTitleLeft
    }
    
    /// 紫色背景图片，purple_7F40FF
    static let normalPurpleColor = UIButton.color(hex: 0x7F40FF)
    static let normalPurpleImage = UIButton.imagePure(color: normalPurpleColor)
    
    /// highlighted紫色背景图片，purple_5715DD
    static let highlightedPurpleColor = UIButton.color(hex: 0x5715DD)
    static let highlightedPurpleImage = UIButton.imagePure(color: highlightedPurpleColor)
    
    /// 白色背景，.white
    static let normalWhiteImage = UIButton.imagePure(color: .white)
    
    /// highlighted白色背景图片，gray_E5E5E5
    static let highlightedGrayColor = UIButton.color(hex: 0xE5E5E5)
    static let highlightedGrayImage = UIButton.imagePure(color: highlightedGrayColor)
    
    /// 设置图片和标题居中的相对位置
    ///
    /// - Parameters:
    ///   - relativeLocation: 图片和标题相对位置
    ///   - spacing: 若*relativeLocation*为 *imageUpTitleDown* *imageDownTitleUp* 则为竖直距离；若*relativeLocation*为
    ///     *imageLeftTitleRight* *imageRightTitleLeft* 则为水平距离
    /// - Warning: 需要先设置图片和标题。如标题图片改变，请再次掉用该方法。不可同时使用 *imageEdgeInsets* *titleEdgeInsets* *contentEdgeInsets*，请先设置，再调用该方法
    func centerContentRelativeLocation(_ relativeLocation: ImageTitleRelativeLocation,
                                       spacing: CGFloat)
    {
        assert(contentVerticalAlignment == .center,
               "only works with contentVerticalAlignment = .center !!!")
        
        guard (title(for: .normal) != nil) || (attributedTitle(for: .normal) != nil) else {
            assert(false, "TITLE IS NIL! SET TITTLE FIRST!")
            return
        }
        
        guard let imageSize = self.currentImage?.size else {
            assert(false, "IMGAGE IS NIL! SET IMAGE FIRST!!!")
            return
        }
        guard let titleSize = titleLabel?
            .systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        else {
            assert(false, "TITLELABEL IS NIL!")
            return
        }
        
        let horizontalResistent: CGFloat
        // 扩展contenArea 防止标题显示不全
        if frame.width < titleSize.width + imageSize.width {
            horizontalResistent = titleSize.width + imageSize.width - frame.width
            print("horizontalResistent", horizontalResistent)
        } else {
            horizontalResistent = 0
        }
        
        var adjustImageEdgeInsets: UIEdgeInsets = .zero
        var adjustTitleEdgeInsets: UIEdgeInsets = .zero
        var adjustContentEdgeInsets: UIEdgeInsets = .zero
        
        let verticalImageAbsOffset: CGFloat = abs((titleSize.height + spacing) / 2)
        let verticalTitleAbsOffset: CGFloat = abs((imageSize.height + spacing) / 2)
        
        switch relativeLocation {
        case .imageUpTitleDown:
            
            adjustImageEdgeInsets.top = -verticalImageAbsOffset
            adjustImageEdgeInsets.bottom = verticalImageAbsOffset
            adjustImageEdgeInsets.left = titleSize.width / 2 - horizontalResistent / 2
            adjustImageEdgeInsets.right = -titleSize.width / 2 - horizontalResistent / 2
            
            adjustTitleEdgeInsets.top = verticalTitleAbsOffset
            adjustTitleEdgeInsets.bottom = -verticalTitleAbsOffset
            adjustTitleEdgeInsets.left = -imageSize.width / 2 - horizontalResistent / 2
            adjustTitleEdgeInsets.right = imageSize.width / 2 - horizontalResistent / 2
            
            adjustContentEdgeInsets.top = spacing
            adjustContentEdgeInsets.bottom = spacing
            adjustContentEdgeInsets.left = -horizontalResistent
            adjustContentEdgeInsets.right = -horizontalResistent
        case .imageDownTitleUp:
            adjustImageEdgeInsets.top = verticalImageAbsOffset
            adjustImageEdgeInsets.bottom = -verticalImageAbsOffset
            adjustImageEdgeInsets.left = titleSize.width / 2 + horizontalResistent / 2
            adjustImageEdgeInsets.right = -titleSize.width / 2 - horizontalResistent / 2
            
            adjustTitleEdgeInsets.top = -verticalTitleAbsOffset
            adjustTitleEdgeInsets.bottom = verticalTitleAbsOffset
            adjustTitleEdgeInsets.left = -imageSize.width / 2 + horizontalResistent / 2
            adjustTitleEdgeInsets.right = imageSize.width / 2 - horizontalResistent / 2
            
            adjustContentEdgeInsets.top = spacing
            adjustContentEdgeInsets.bottom = spacing
            adjustContentEdgeInsets.left = -horizontalResistent
            adjustContentEdgeInsets.right = -horizontalResistent
        case .imageLeftTitleRight:
            adjustImageEdgeInsets.left = -spacing / 2
            adjustImageEdgeInsets.right = spacing / 2
            
            adjustTitleEdgeInsets.left = spacing / 2
            adjustTitleEdgeInsets.right = -spacing / 2
            
            adjustContentEdgeInsets.left = spacing
            adjustContentEdgeInsets.right = spacing
        case .imageRightTitleLeft:
            adjustImageEdgeInsets.left = titleSize.width + spacing / 2
            adjustImageEdgeInsets.right = -titleSize.width - spacing / 2
            
            adjustTitleEdgeInsets.left = -imageSize.width - spacing / 2
            adjustTitleEdgeInsets.right = imageSize.width + spacing / 2
            
            adjustContentEdgeInsets.left = spacing
            adjustContentEdgeInsets.right = spacing
        }
        
        imageEdgeInsets = adjustImageEdgeInsets
        titleEdgeInsets = adjustTitleEdgeInsets
        contentEdgeInsets = adjustContentEdgeInsets
        
        setNeedsLayout()
    }
    
    /// 生成1*1大小的纯色图片
    ///
    /// - Parameter color: 颜色
    /// - Returns: 图片
    private static func imagePure(color: UIColor) -> UIImage {
        let size = CGSize(width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(size, false, 1)
        
        defer {
            UIGraphicsEndImageContext()
        }
        
        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        
        guard let aCgImage = UIGraphicsGetImageFromCurrentImageContext()?.cgImage else {
            return UIImage()
        }
        return UIImage(cgImage: aCgImage)
    }
    
    private static func color(hex: Int, transparency: CGFloat = 1) -> UIColor {
        var trans = transparency
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }
        
        let red = CGFloat((hex >> 16) & 0xFF) / 255.0
        let green = CGFloat((hex >> 8) & 0xFF) / 255.0
        let blue = CGFloat(hex & 0xFF) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: transparency)
    }
}
