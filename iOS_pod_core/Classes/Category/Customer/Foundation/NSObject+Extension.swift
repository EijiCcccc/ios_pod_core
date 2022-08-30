//
//  NSObject+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation

public extension NSObject {
    
    func toLongLongValue() -> Int64 {
        if self.isKind(of: NSString.self) {
            return (self as! NSString).longLongValue
        }
        if self.isKind(of: NSNumber.self) {
            return (self as! NSNumber).int64Value
        }
        return 0
    }
    func toDoubleValue() -> Double {
        if self.isKind(of: NSString.self) {
            return (self as! NSString).doubleValue
        }
        if self.isKind(of: NSNumber.self) {
            return (self as! NSNumber).doubleValue
        }
        return 0.0
    }
    func toIntegerValue() -> Int {
        if self.isKind(of: NSString.self) {
            return (self as! NSString).integerValue
        }
        if self.isKind(of: NSNumber.self) {
            return (self as! NSNumber).intValue
        }
        return 0
    }
    func toIntValue() -> Int32 {
        if self.isKind(of: NSString.self) {
            return (self as! NSString).intValue
        }
        if self.isKind(of: NSNumber.self) {
            return (self as! NSNumber).int32Value
        }
        return 0
    }
    func toBoolValue() -> Bool {
        if self.isKind(of: NSString.self) {
            return (self as! NSString).boolValue
        }
        if self.isKind(of: NSNumber.self) {
            return (self as! NSNumber).boolValue
        }
        return false
    }
}

