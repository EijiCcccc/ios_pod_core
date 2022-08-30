//
//  Array+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation
import UIKit

public extension Array {
    // 去重
    func filterDuplicates<E: Equatable>(_ filter: (Element) -> E) -> [Element] {
        var result = [Element]()
        for value in self {
            let key = filter(value)
            if !result.map({filter($0)}).contains(key) {
                result.append(value)
            }
        }
        return result
    }
}
