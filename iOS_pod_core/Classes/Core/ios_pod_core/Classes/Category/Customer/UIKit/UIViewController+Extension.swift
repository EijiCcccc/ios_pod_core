//
//  UIViewController+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation
import UIKit

public extension UIViewController {
    
    static func topViewController(_ viewController: UIViewController? = nil) -> UIViewController? {
        let viewController = viewController ?? UIApplication.shared.delegate?.window!!.rootViewController
        
        if let navigationController = viewController as? UINavigationController,
            !navigationController.viewControllers.isEmpty {
            return self.topViewController(navigationController.viewControllers.last)
        }
        else if let tabBarController = viewController as? UITabBarController,
            let selectedController = tabBarController.selectedViewController {
            return self.topViewController(selectedController)
        }
        else if let presentedController = viewController?.presentedViewController {
            return self.topViewController(presentedController)
        }
        
        return viewController
    }
}
