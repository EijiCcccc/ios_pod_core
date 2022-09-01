//
//  Geometric.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation

/// namespcae for UI constant
public enum UI {
    public static let screenWidth = UIScreen.main.bounds.size.width
    public static let screenHeight = UIScreen.main.bounds.size.height
    public static let screenScaleFactor = UIScreen.main.bounds.size.width / 320.0

    public static var screenScaleFactor375: CGFloat {
        var f = UIScreen.main.bounds.size.width / 375.0
        if f > 1 {
            f = 1.0
        }
        return f
    }

    public static let screenHeightScale = UIScreen.main.bounds.size.height / 667.0
    public static let navigationBarHeight: CGFloat = 44.0
    public static let statusBarHeight = UIApplication.shared.statusBarFrame.size.height
    public static let tabBarHeight: CGFloat = 49

    public static let safeBottomMargin: CGFloat = {
        if UIDevice.isiPhoneXSeries {
            return 34.0
        }
        return 0.0
    }()

    public static var safeTopMargin: CGFloat {
        if #available(iOS 11.0, *) {
            return UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0.0
        } else {
            return 0.0
        }
    }
    public static let topNavHeight: CGFloat = UI.navigationBarHeight + UI.statusBarHeight
    public static let lineHeight = 1.0 / UIScreen.main.scale
    public static let lineWidth = 1.0 / UIScreen.main.scale
}

/**
 度数转弧度

 - parameter degrees: 度数

 - returns: 弧度
 */
public func DegreesToRadians(_ degrees: CGFloat) -> CGFloat {
    return degrees * .pi / 180
}

/**
 弧度转度数

 - parameter radians: 弧度

 - returns: 度数
 */
public func RadiansToDegrees(_ radians: CGFloat) -> CGFloat {
    return radians * 180 / CGFloat.pi
}
