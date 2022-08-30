//
//  UIDevice+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import UIKit

@objc public extension UIDevice {
    private static let screenWidth = UIScreen.main.bounds.size.width
    
    private static let screenHeight = UIScreen.main.bounds.size.height
    
    /// iPhoneX系列
    static let isiPhoneXSeries = isiPhoneXMax || isiPhoneX || isiPhoneXr || isiPhone12 || isiPhone12Max
    
    
    // iphone13 尺寸与 iPhone12一致
    static let isiPhone12: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 390.0 &&
            UIDevice.screenHeight == 844.0
    }()
    
    static let isiPhone12Mini: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 360.0 &&
            UIDevice.screenHeight == 780.0
    }()
    
    static let isiPhone12Max: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 428.0 &&
            UIDevice.screenHeight == 926.0
    }()
    
    // X/XS/11Pro
    static let isiPhone11: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 375.0 &&
            UIDevice.screenHeight == 812.0
    }()
    
    // XR/11
    static let isiPhone11XR: Bool = {
        UIScreen.main.scale == 2 &&
        UIDevice.screenWidth == 414.0 &&
            UIDevice.screenHeight == 896.0
    }()
    
    // XS MAX/11Pro MAX
    static let isiPhone11Max: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 414.0 &&
            UIDevice.screenHeight == 896.0
    }()
    
    
    /// iPhoneXMax.screenFrame == iPhoneXr.screenFrame
    static let isiPhoneXMax: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenHeight == 896.0 &&
            UIDevice.screenWidth == 414
    }()
    
    /// iPhoneXr.screenFrame == iPhoneXMax.screenFrame
    static let isiPhoneXr: Bool = {
        UIScreen.main.scale == 2 &&
            UIDevice.screenHeight == 896 &&
            UIDevice.screenWidth == 414
    }()
    
    static let isiPhoneX: Bool = {
        UIScreen.main.scale == 3 &&
            UIDevice.screenWidth == 375.0 &&
            UIDevice.screenHeight == 812.0
    }()
    
    static let isiPhonePlus: Bool = {
        UIDevice.screenHeight == 736.0 &&
            UIDevice.screenWidth == 414 &&
            UIScreen.main.scale == 3
    }()
    
    static let isiPhone6: Bool = {
        UIDevice.screenHeight == 667.0 &&
            UIDevice.screenWidth == 375 &&
            UIScreen.main.scale == 3
    }()
    
    static let isiPhone5: Bool = {
        if UIDevice.screenHeight == 568.0,
           UIDevice.screenWidth == 320
        {
            return true
        }
        return false
    }()
    
    static let isiPhone4: Bool = {
        if UIDevice.screenHeight == 480.0,
           UIDevice.screenWidth == 320
        {
            return true
        }
        return false
    }()
}
