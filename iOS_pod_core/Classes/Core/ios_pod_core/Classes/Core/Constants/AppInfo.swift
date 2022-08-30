//
//  AppInfo.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import AdSupport
import Foundation

public enum AppInfo {
    public static var appName: String {
        return Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String ?? "APP"
    }
    
    public static var bundleId: String {
        return Bundle.main.bundleIdentifier!
    }
    
    public static var appVersion: String {
        return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
    }
    
    public static var buildVersion: String {
        return Bundle.main.infoDictionary!["CFBundleVersion"] as! String
    }
}
