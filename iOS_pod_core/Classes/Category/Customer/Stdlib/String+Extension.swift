//
//  String+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation
import UIKit

public extension String {
    /**
     计算在给定高度和字体前提下的字符串宽度
     
     - parameter height: 给定高度
     - parameter font:   给定字体
     
     - returns: 占用宽度
     */
    func adjustWidthWithHeight(_ height: CGFloat, font: UIFont) -> CGFloat {
        return (self as NSString).boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: height), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil).size.width
    }
    
    /// 以正则分割字符串
    ///
    /// - Parameter regex: 正则字符串
    /// - Returns: 分割后的字符串和对应的range
    func split(byRegex regex: String) -> [(String, Range<String.Index>)] {
        do {
            let regex = try NSRegularExpression(pattern: regex, options: .caseInsensitive)
            let matchRangeArrray = regex
                .matches(in: self, options: [], range: NSRange(startIndex..<endIndex, in: self))
                .sorted(by: { $0.range.location < $1.range.location })
                .map { $0.range }
            
            var splits: [(String, Range<String.Index>)] = []
            var start = startIndex
            for range in matchRangeArrray {
                guard let stringRange = Range(range, in: self) else {
                    continue
                }
                
                let end = stringRange.lowerBound
                let part1 = self[start..<end]
                
                if !part1.isEmpty {
                    splits.append((String(part1), start..<end))
                }
                
                let nameString = self[stringRange]
                splits.append((String(nameString), stringRange))
                start = stringRange.upperBound
            }
            
            if start < endIndex {
                let finalRange = start..<endIndex
                splits.append((String(self[finalRange]), finalRange))
            }
            
            return splits
            
        } catch {
            assert(false, "正则表达式错误！！！")
            return [(self, startIndex..<endIndex)]
        }
    }
    
    /**
     计算在给定宽度和字体前提下的字符串高度
     
     - parameter width: 给定宽度
     - parameter font:  给定字体
     
     - returns: 占用高度
     */
    func adjustHeightWithWidth(_ width: CGFloat, font: UIFont) -> CGFloat {
        return (self as NSString).boundingRect(with: CGSize(width: width, height: CGFloat.greatestFiniteMagnitude), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil).size.height
    }
    
    /**
     计算在给定字体的前提下的一行的字符串大小
     
     - parameter font:  给定字体
     
     - returns: 占用大小
     */
    func getOneLineLabelSizeWithFont(_ font: UIFont) -> CGSize {
        return (self as NSString).size(withAttributes: [NSAttributedString.Key.font: font])
    }
    
    /**
     计算在给定字体的前提下的一行的字符串高度
     
     - parameter font:  给定字体
     
     - returns: 占用高度
     */
    func getOneLineLabelHeightWithFont(_ font: UIFont) -> CGFloat {
        return ("呵呵" as NSString).size(withAttributes: [NSAttributedString.Key.font: font]).height
    }
    
    /**
     检查字符串中是否包含emoji表情
     */
//    func isContainsEmoji() -> Bool {
//        return (self as NSString).isContainsEmoji()
//    }
    
    /**
     检查字符串中是否包含某特定字符串
     
     - parameter keyword: 特征字符串
     
     - returns: 是否包含
     */
    func isContains(_ keyword: String) -> Bool {
        return (self as NSString).range(of: keyword).location != NSNotFound
    }
    
    /**
     是否以某个字符串起头
     */
    func startsWith(_ keyword: String) -> Bool {
        return (self as NSString).range(of: keyword).location == 0
    }
    
    /// 移除特殊字符，防止对程序造成卡顿或闪退
    func removeSpecialCharacters() -> String {
        var result = replacingOccurrences(of: "‍", with: "")
        result = replacingOccurrences(of: "　҉", with: "")
        return result
    }
    /// 移除中括号，防止对程序造成卡顿或闪退
    func removeSpecialBracketCharacters() -> String {
        var result = replacingOccurrences(of: "‍", with: "")
        result = replacingOccurrences(of: "[]", with: "")
        return result
    }
    
    /// 获取substring，范围区间左闭右开[from, to)
    func substringFrom(from: Int, to: Int) -> String {
        let fromIndex = index(startIndex, offsetBy: from)
        let toIndex = index(startIndex, offsetBy: to)
        let range = Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex))
        return String(self[range])
    }
    
    /// 将一个范围替换为指定字符串，范围区间左闭右开[from, to)
    func replacedStringFrom(from: Int, to: Int, with replaceStr: String) -> String {
        let fromIndex = index(startIndex, offsetBy: from)
        let toIndex = index(startIndex, offsetBy: to)
        let range = Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex))
        return replacingCharacters(in: range, with: replaceStr)
    }
    
    // MARK: 是否为纯数字

    func isNum() -> Bool {
        let scan = Scanner(string: self)
        var val: Int32 = 0
        return scan.scanInt32(&val) && scan.isAtEnd
    }
}

public extension String {
    func longLongValue() -> Int64 {
        return (self as NSString).longLongValue
    }

    func doubleValue() -> Double {
        return (self as NSString).doubleValue
    }

    func integerValue() -> Int {
        return (self as NSString).integerValue
    }

    func intValue() -> Int32 {
        return (self as NSString).intValue
    }

    func boolValue() -> Bool {
        return (self as NSString).boolValue
    }
}

public extension String {
    /// A data representation of the hexadecimal bytes in this string.
    func hexDecodedData() -> Data {
        // Get the UTF8 characters of this string
        let chars = Array(utf8)
        
        // Keep the bytes in an UInt8 array and later convert it to Data
        var bytes = [UInt8]()
        bytes.reserveCapacity(count / 2)
        
        // It is a lot faster to use a lookup map instead of strtoul
        let map: [UInt8] = [
            0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, // 01234567
            0x08, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 89:;<=>?
            0x00, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x00, // @ABCDEFG
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 // HIJKLMNO
        ]
        
        // Grab two characters at a time, map them and turn it into a byte
        for i in stride(from: 0, to: count, by: 2) {
            let index1 = Int(chars[i] & 0x1f ^ 0x10)
            let index2 = Int(chars[i + 1] & 0x1f ^ 0x10)
            bytes.append(map[index1] << 4 | map[index2])
        }
        
        return Data(bytes)
    }
}
