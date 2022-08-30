//
//  Fonts.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation
import UIKit

public extension UIFont {
    convenience init?(familyName: FamilyName, size fontSize: CGFloat) {
        self.init(name: familyName.rawValue, size: fontSize)
    }
}

public extension UIFont {
    enum FamilyName: String {
        case YouSheBiaoTiHei
        case Bebas = "Bebas Neue"
        case DinBold  = "DIN-Bold"
    }
    
    static let font6 = UIFont.systemFont(ofSize: 6.0)
    static let font7 = UIFont.systemFont(ofSize: 7.0)
    static let font8 = UIFont.systemFont(ofSize: 8.0)
    static let font9 = UIFont.systemFont(ofSize: 9.0)
    static let font10 = UIFont.systemFont(ofSize: 10.0)
    static let font11 = UIFont.systemFont(ofSize: 11.0)
    static let font12 = UIFont.systemFont(ofSize: 12.0)
    static let font13 = UIFont.systemFont(ofSize: 13.0)
    static let font14 = UIFont.systemFont(ofSize: 14.0)
    static let font15 = UIFont.systemFont(ofSize: 15.0)
    static let font16 = UIFont.systemFont(ofSize: 16.0)
    static let font17 = UIFont.systemFont(ofSize: 17.0)
    static let font18 = UIFont.systemFont(ofSize: 18.0)
    static let font19 = UIFont.systemFont(ofSize: 19.0)
    static let font20 = UIFont.systemFont(ofSize: 20.0)
    static let font21 = UIFont.systemFont(ofSize: 21.0)
    static let font22 = UIFont.systemFont(ofSize: 22.0)
    static let font23 = UIFont.systemFont(ofSize: 23.0)
    static let font24 = UIFont.systemFont(ofSize: 24.0)
    static let font25 = UIFont.systemFont(ofSize: 25.0)
    static let font26 = UIFont.systemFont(ofSize: 26.0)
    static let font27 = UIFont.systemFont(ofSize: 27.0)
    static let font28 = UIFont.systemFont(ofSize: 28.0)
    static let font29 = UIFont.systemFont(ofSize: 29.0)
    static let font30 = UIFont.systemFont(ofSize: 30.0)
    static let font31 = UIFont.systemFont(ofSize: 31.0)
    static let font32 = UIFont.systemFont(ofSize: 32.0)
    static let font40 = UIFont.systemFont(ofSize: 40.0)

    static let boldFont7 = UIFont.boldSystemFont(ofSize: 7.0)
    static let boldFont9 = UIFont.boldSystemFont(ofSize: 9.0)
    static let boldFont10 = UIFont.boldSystemFont(ofSize: 10.0)
    static let boldFont11 = UIFont.boldSystemFont(ofSize: 11.0)
    static let boldFont12 = UIFont.boldSystemFont(ofSize: 12.0)
    static let boldFont13 = UIFont.boldSystemFont(ofSize: 13.0)
    static let boldFont14 = UIFont.boldSystemFont(ofSize: 14.0)
    static let boldFont15 = UIFont.boldSystemFont(ofSize: 15.0)
    static let boldFont16 = UIFont.boldSystemFont(ofSize: 16.0)
    static let boldFont17 = UIFont.boldSystemFont(ofSize: 17.0)
    static let boldFont18 = UIFont.boldSystemFont(ofSize: 18.0)
    static let boldFont19 = UIFont.boldSystemFont(ofSize: 19.0)
    static let boldFont20 = UIFont.boldSystemFont(ofSize: 20.0)
    static let boldFont21 = UIFont.boldSystemFont(ofSize: 21.0)
    static let boldFont22 = UIFont.boldSystemFont(ofSize: 22.0)
    static let boldFont23 = UIFont.boldSystemFont(ofSize: 23.0)
    static let boldFont24 = UIFont.boldSystemFont(ofSize: 24.0)
    static let boldFont40 = UIFont.boldSystemFont(ofSize: 40.0)

    static let mediumFont7 = UIFont.systemFont(ofSize: 7, weight: .medium)

    static let mediumFont8 = UIFont.systemFont(ofSize: 8, weight: .medium)
    static let mediumFont9 = UIFont.systemFont(ofSize: 9, weight: .medium)
    static let mediumFont10 = UIFont.systemFont(ofSize: 10, weight: .medium)
    static let mediumFont11 = UIFont.systemFont(ofSize: 11, weight: .medium)

    static let mediumFont12 = UIFont.systemFont(ofSize: 12, weight: .medium)
    static let mediumFont13 = UIFont.systemFont(ofSize: 13, weight: .medium)
    static let mediumFont14 = UIFont.systemFont(ofSize: 14, weight: .medium)
    static let mediumFont18 = UIFont.systemFont(ofSize: 18, weight: .medium)
    static let mediumFont16 = UIFont.systemFont(ofSize: 16, weight: .medium)
    static let mediumFont21 = UIFont.systemFont(ofSize: 21, weight: .medium)
    static let mediumFont28 = UIFont.systemFont(ofSize: 28, weight: .medium)

    static let semiboldFont10 = UIFont.systemFont(ofSize: 10, weight: .semibold)

    static let semiboldFont11 = UIFont.systemFont(ofSize: 11, weight: .semibold)
    static let semiboldFont12 = UIFont.systemFont(ofSize: 12, weight: .semibold)
    static let semiboldFont14 = UIFont.systemFont(ofSize: 14, weight: .semibold)
    static let semiboldFont16 = UIFont.systemFont(ofSize: 16, weight: .semibold)
    static let semiboldFont18 = UIFont.systemFont(ofSize: 18, weight: .semibold)
    static let semiboldFont19 = UIFont.systemFont(ofSize: 19, weight: .semibold)
    static let semiboldFont20 = UIFont.systemFont(ofSize: 20, weight: .semibold)
    static let semiboldFont23 = UIFont.systemFont(ofSize: 23, weight: .semibold)

    static let heavyFont10 = UIFont.systemFont(ofSize: 10, weight: .heavy)
    static let heavyFont12 = UIFont.systemFont(ofSize: 12, weight: .heavy)
    static let heavyFont13 = UIFont.systemFont(ofSize: 13, weight: .heavy)
    static let heavyFont14 = UIFont.systemFont(ofSize: 14, weight: .heavy)
    static let heavyFont16 = UIFont.systemFont(ofSize: 16, weight: .heavy)
}
