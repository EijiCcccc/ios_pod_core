//
//  Date+Extension.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation

public enum DateTimeStyle: String {
    // MARK: - 日期 + 时间

    /// 2016-01-01 23:10:22
    case dateTime1 = "yyyy-MM-dd HH:mm:ss"
    /// 2月5日13时2分5秒，一般用于倒计时
    case dateTime2 = "M月d日H时m分s秒"
    /// 2016-01-01 00:00:00
    case dateTime3 = "yyyy-MM-dd 00:00:00"
    /// 2016-01-01 23:10:22.234
    case dateTime4 = "yyyy-MM-dd HH:mm:ss.SSS"
    /// 2016年01月01日 23:10:22
    case dateTime5 = "yyyy年MM月dd日 HH:mm:ss"
    /// 2016-01-01 23：10
    case dateTime6 = "yyyy-MM-dd HH:mm"
    /// 2016年01月01日23:10分
    case dateTime7 = "yyyy年MM月dd日HH:mm分"
    /// 2016年01月01日  23点10分
    case dateTime8 = "yyyy年MM月dd日   HH点mm分"

    // MARK: - 日期

    /// 2016-01-01
    case date1 = "yyyy-MM-dd"
    /// 20160101
    case date2 = "yyyyMMdd"
    /// 16-3-14
    case date3 = "yy-M-d"
    /// 3-14
    case date4 = "M-d"
    /// 2016
    case date5 = "yyyy"
    /// 2016-4
    case date6 = "yyyy-M"
    /// 3月4日
    case date7 = "M月d日"
    /// 2016/01/01
    case date8 = "yyyy/MM/dd"
    /// 2016年01月01日
    case date9 = "yyyy年MM月dd日"

    // MARK: - 时间

    /// 23:33
    case time1 = "HH:mm"
    /// 23
    case time2 = "HH"
    /// 昨天 23:33
    case time3 = "昨天 HH:mm"
}

public extension Date {
    /// Date string from date.
    ///
    ///     Date().string(ofStyle: .dateTime1) -> "2016-01-01 23:10:22"
    ///     Date().string(ofStyle: .date1) -> "2016-01-01"
    ///     Date().string(ofStyle: .time1) -> "23:33"
    ///
    /// - Parameter style: DateTimeStyle (default is "dd/MM/yyyy").
    /// - Returns: date string.
    func string(ofStyle style: DateTimeStyle) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = style.rawValue
        return dateFormatter.string(from: self)
    }

    /// 从字符串获取Date
    /// - Parameters:
    ///   - string: string
    ///   - style: style
    init?(string: String, style: DateTimeStyle) {
        let formatter = DateFormatter()
        formatter.dateFormat = style.rawValue
        guard let date = formatter.date(from: string) else {
            return nil
        }
        self = date
    }

    /// 获取星座
    var constellation: String {
        let astroString = "摩羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手摩羯"
        let astroFormat = "102123444543"

        guard (month < 1 || month > 12 || day < 1 || day > 31) == false else {
            return "未知星座"
        }
        guard (month == 2 && day > 29) == false else {
            return "未知星座"
        }
        guard ((month == 4 || month == 6 || month == 9 || month == 11) && day > 30) == false else {
            return "未知星座"
        }

        let astroRange_ = NSRange(location: month - 1, length: 1)

        guard let astroRange = Range(astroRange_, in: astroFormat),
              let astro = Int(astroFormat[astroRange])
        else {
            return "未知星座"
        }
        let isMore = day < (astro - (-19))

        let start = isMore ? (month * 2 - 1 * 2) : (month * 2 - 0 * 2)
        let astroStrinRang_ = NSRange(location: start, length: 2)
        guard let astroStrinRang = Range(astroStrinRang_, in: astroString) else {
            return "未知星座"
        }
        let result = astroString[astroStrinRang] + "座"
        return String(result)
    }
}
