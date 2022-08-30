//
//  Colors.swift
//  talkba
//
//  Created by douyu on 2021/4/27.
//

import Foundation
import UIKit

extension UIColor {
    
    /// 声趣 主题青色 0x4FFFF6
    static let themeGreenColor: UIColor = UIColor(hex: 0x4FFFF6)!
    /// 声趣 渐变绿
    static let rechargeGradientGreenColors = [UIColor(hex: 0x8FD3F4)!, UIColor(hex: 0x84FAB0)!]
    /// 暖语 渐变粉
    static let rechargeGradientPinkColors = [UIColor(hex: 0xFFCF9F )!, UIColor(hex: 0xFF839C)!]
        /// 暖语 渐变
    /// 话音主题 黄色 无渐变色  0xFFE37C
    static let themeYellowColor: UIColor = UIColor(hex: 0xFFE37C)!
    
    
}
// MARK: - 应用内所有颜色，都必须在此扩展中

public extension UIColor {
    
    
    
    
    /// 导航栏背景色
    static let navigationBarBackground: UIColor = .white

    /// 主题红色
    static let themeRed: UIColor = .red_FF53B4

    static let textLink: UIColor = .blue_3883FF
    
    
    
    /// 分割线
    static let line = UIColor.gray_DDDDDD
    
    static let alertViewBlackBackgournd = UIColor(white: 0, alpha: 0.6)

    /// 性别颜色
    static let sexWomen = UIColor.pink_E537DB
    static let sexMan = UIColor.blue_219EFF

    
  

    // 取消
    static let alertCancelButtonBackground = UIColor.clear
    static let alertCancelButtonBorder = UIColor.gray_A9A9A9
    static let alertCancelButtonTitle = UIColor.gray_A9A9A9

   

    /// 私聊文字气泡背景颜色
    static let messageLeftTextBubbleBackground = UIColor.white
    static let messageRightTextBubbleBackground = UIColor.purple_AA80FF

    /// 私聊消息的交互按钮相关

    // 确认
    static let messageButtonConfirmBackgroundPink = UIColor.pink_F475ED
    static let messageButtonConfirmBackground = UIColor.purple_7F40FF
    static let messageButtonConfirmBorder: UIColor = .clear
    static let messageButtonConfirmTitle: UIColor = .white

    /// 语音房间-聊天-送礼昵称、链接的颜色 26DAC3
    static let voiceRoomLink: UIColor = .blue_26DAC3

    /// 语音房间-弹幕颜色
    static let barrageColor = UIColor(hex: 0xFFDBB2)!
    /// 语音房间-喇叭颜色
    static let hornColor = UIColor(hex: 0xFFF687)!
    // 取消
    static let messageCancelButtonBackground = UIColor.clear
    static let messageCancelButtonBorder = UIColor.gray_A9A9A9
    static let messageCancelButtonTitle = UIColor.gray_A9A9A9

    // 处理完之后的按钮背景
    static let messageButtonHandledBackground = UIColor.gray_EEEEEE
    static let messageButtonHandledBorder: UIColor = .clear
    static let messageButtonHandledTitle = UIColor.gray_A9A9A9

    // MARK: - 颜色_数值

    static let purple_7F40FF = UIColor(hex: 0x7F40FF)!
    static let purple_AA80FF = UIColor(hex: 0xAA80FF)!
    static let purple_5715DD = UIColor(hex: 0x5715DD)!
    static let purple_160036 = UIColor(hex: 0x160036)!
    static let purple_9969FC = UIColor(hex: 0x9969FC)!
    static let purple_B894FF = UIColor(hex: 0xB894FF)!
    static let purple_A376FF = UIColor(hex: 0xA376FF)!
    static let purple_8D42FF = UIColor(hex: 0x8D42FF)!
    static let purple_7743F6 = UIColor(hex: 0x7743F6)!
    static let purple_4D00C2 = UIColor(hex: 0x4D00C2)!
    static let purple_F7F4FF = UIColor(hex: 0xF7F4FF)!
    static let purple_6D54FF = UIColor(hex: 0x6D54FF)!
    static let purple_8670FF = UIColor(hex: 0x8670FF)!
    static let purple_D5CDFF = UIColor(hex: 0xD5CDFF)!
    static let purple_DAC7FF = UIColor(hex: 0xDAC7FF)!
    static let purple_7A22FF = UIColor(hex: 0x7A22FF)!
    static let purple_9013FE = UIColor(hex: 0x9013FE)!
    static let purple_270063 = UIColor(hex: 0x270063)!
    static let purple_D287FF = UIColor(hex: 0xD287FF)!
    static let purple_8570F9 = UIColor(hex: 0x8570F9)!
    static let purple_8741F5 = UIColor(hex: 0x8741F5)!
    static let purple_C578FF = UIColor(hex: 0xC578FF)!
    static let purple_6D54FB = UIColor(hex: 0x6D54FB)!
    static let purple_542FFF = UIColor(hex: 0x542FFF)!
    static let purple_985AFF = UIColor(hex: 0x985AFF)!
    static let purple_9460FF = UIColor(hex: 0x9460FF)!
    static let purple_CCB4FD = UIColor(hex: 0xCCB4FD)!
    static let purple_C1A2FF = UIColor(hex: 0xC1A2FF)!
    static let purple_F4F5F9 = UIColor(hex: 0xF4F5F9)!
    static let purple_4D7F40 = UIColor(hex: 0x4D7F40)!
    static let purple_711AE4 = UIColor(hex: 0x711AE4)!
    static let purple_E69DFF = UIColor(hex: 0xE69DFF)!
    static let purple_8E86FF = UIColor(hex: 0x8E86FF)!
    static let purple_1E0E5B = UIColor(hex: 0x1E0E5B)!
    static let purple_C8ADFF = UIColor(hex: 0xC8ADFF)!
    /// 首充
    static let purple_64008E = UIColor(hex: 0x64008E)!
    static let purple_D61BE4 = UIColor(hex: 0xD61BE4)!
    static let purple_822F9D = UIColor(hex: 0x822F9D)!
    static let purple_B175B6 = UIColor(hex: 0xB175B6)!
    static let purple_BBAEFF = UIColor(hex: 0xBBAEFF)!
    static let purple_B0A1FF = UIColor(hex: 0xB0A1FF)!

    static let pink_FF76B2 = UIColor(hex: 0xFF76B2)!
    static let pink_FFD3E6 = UIColor(hex: 0xFFD3E6)!
    static let pink_F475ED = UIColor(hex: 0xF475ED)!
    static let pink_E537DB = UIColor(hex: 0xE537DB)!
    static let pink_FF53B4 = UIColor(hex: 0xFF53B4)!
    static let pink_FF72F3 = UIColor(hex: 0xFF72F3)!
    static let pink_FF81BF = UIColor(hex: 0xFF81BF)!
    static let pink_EF6B8C = UIColor(hex: 0xEF6B8C)!
    static let pink_FFE9F1 = UIColor(hex: 0xFFE9F1)!
    static let pink_FA9FFF = UIColor(hex: 0xFA9FFF)!
    static let pink_FCCAFF = UIColor(hex: 0xFCCAFF)!
    static let pink_FF5EA9 = UIColor(hex: 0xFF5EA9)!
    static let pink_FF82C3 = UIColor(hex: 0xFF82C3)!
    static let pink_FE4EB2 = UIColor(hex: 0xFE4EB2)!
    static let pink_F1EFFF = UIColor(hex: 0xF1EFFF)!
    static let pink_FAEFFF = UIColor(hex: 0xFAEFFF)!
    static let pink_FF7AFA = UIColor(hex: 0xFF7AFA)!
    static let pink_FF93CB = UIColor(hex: 0xFF93CB)!
    static let pink_FF19D4 = UIColor(hex: 0xFF19D4)!
    static let pink_E269FF = UIColor(hex: 0xE269FF)!
    static let pink_FF907D = UIColor(hex: 0xFF907D)! /// 首充页
    static let pink_FFD3C4 = UIColor(hex: 0xFFD3C4)! /// 首充页
    
    static let pink_FAA5D2 = UIColor(hex: 0xFAA5D2)!

    static let gray_A9A9A9 = UIColor(hex: 0xA9A9A9)!
    static let gray_EEEEEE = UIColor(hex: 0xEEEEEE)!
    static let gray_F2F2F2 = UIColor(hex: 0xF2F2F2)!
    static let gray_F7F7F7 = UIColor(hex: 0xF7F7F7)!
    static let gray_9BA6BD = UIColor(hex: 0x9BA6BD)!
    static let gray_DDDDDD = UIColor(hex: 0xDDDDDD)!
    static let gray_8E8E8E = UIColor(hex: 0x8E8E8E)!
    static let gray_E7E7E7 = UIColor(hex: 0xE7E7E7)!
    static let gray_FAFAFA = UIColor(hex: 0xFAFAFA)!
    static let gray_7A7A7A = UIColor(hex: 0x7A7A7A)!
    static let gray_A7A7A7 = UIColor(hex: 0xA7A7A7)!
    static let gray_646464 = UIColor(hex: 0x646464)!
    static let gray_E5E5E5 = UIColor(hex: 0xE5E5E5)!
    static let gray_999999 = UIColor(hex: 0x999999)!
    static let gray_962B00 = UIColor(hex: 0x962B00)! // 首充
    static let gray_8B572A = UIColor(hex: 0x8B572A)! // 首充

    static let gray_EBEBEB = UIColor(hex: 0xEBEBEB)!
    static let gray_E0E0E0 = UIColor(hex: 0xE0E0E0)!
    static let gray_6D6D6D = UIColor(hex: 0x6D6D6D)!
    static let gray_6D4208 = UIColor(hex: 0x6D4208)!
    static let gray_9F9F9F = UIColor(hex: 0x9F9F9F)!
    static let gray_787878 = UIColor(hex: 0x787878)!
    static let gray_7F8092 = UIColor(hex: 0x7F8092)!
    static let gray_EAEAEA = UIColor(hex: 0xEAEAEA)!
    static let gray_838383 = UIColor(hex: 0x838383)!
    static let gray_838496 = UIColor(hex: 0x838496)!
    static let gray_828282 = UIColor(hex: 0x828282)!
    static let gray_F1F1F3 = UIColor(hex: 0xF1F1F3)!
    static let gray_B2B2B2 = UIColor(hex: 0xB2B2B2)!
    static let gray_ABABAB = UIColor(hex: 0xABABAB)!

    static let gray_969696 = UIColor(hex: 0x969696)!
    static let gray_979797 = UIColor(hex: 0x979797)!
    static let gray_F9F9F9 = UIColor(hex: 0xF9F9F9)!
    static let gray_E8E8E8 = UIColor(hex: 0xE8E8E8)!

    static let black_3E3E3E = UIColor(hex: 0x3E3E3E)!
    static let black_333333 = UIColor(hex: 0x333333)!
    static let black_666666 = UIColor(hex: 0x666666)!
    static let black_313131 = UIColor(hex: 0x313131)!
    static let black_4A4A4A = UIColor(hex: 0x4A4A4A)!
    static let black_01022E = UIColor(hex: 0x01022E)!
    static let black_3C3C3C = UIColor(hex: 0x3C3C3C)!
    static let black_3F3F3F = UIColor(hex: 0x3F3F3F)!
    static let black_31303A = UIColor(hex: 0x31303A)! // 贵族
    static let black_312F3C = UIColor(hex: 0x312F3C)! // 贵族
    static let black_33313A = UIColor(hex: 0x33313A)!
    static let black_1F1D26 = UIColor(hex: 0x1F1D26)!

    static let green_1ED6B9 = UIColor(hex: 0x1ED6B9)!
    static let green_50C5A8 = UIColor(hex: 0x50C5A8)!
    static let green_50E3C2 = UIColor(hex: 0x50E3C2)!
    static let green_4FFFF6 = UIColor(hex: 0x4FFFF6)!
    
    static let green_08BC96 = UIColor(hex: 0x08BC96)!
    static let green_EAF9F6 = UIColor(hex: 0xEAF9F6)!
    static let green_1BC9A6 = UIColor(hex: 0x1BC9A6)!
    static let green_6AC300 = UIColor(hex: 0x6AC300)!
    static let green_5CF66E = UIColor(hex: 0x5CF66E)!
    static let green_FFD562 = UIColor(hex: 0xFFD562)!
    static let green_FE6F1C = UIColor(hex: 0xFE6F1C)!

    static let gray_F3F3F3 = UIColor(hex: 0xF3F3F3)!
    static let gray_C4C4C4 = UIColor(hex: 0xC4C4C4)!
    static let gray_C9C9C9 = UIColor(hex: 0xC9C9C9)!
    static let gray_B4B4B4 = UIColor(hex: 0xB4B4B4)!
    static let gray_D8D8D8 = UIColor(hex: 0xD8D8D8)!
    static let gray_1ED6B9 = UIColor(hex: 0x1ED6B9)!
    static let gray_DADADA = UIColor(hex: 0xDADADA)!
    static let gray_A3A3A3 = UIColor(hex: 0xA3A3A3)!
    static let gray_8A8A8A = UIColor(hex: 0x8A8A8A)!
    static let gray_E1E1E1 = UIColor(hex: 0xE1E1E1)!
    static let gray_302C4D = UIColor(hex: 0x302C4D)!

    static let gray_F8F8F8 = UIColor(hex: 0xF8F8F8)!
    static let gray_E6E6E6 = UIColor(hex: 0xE6E6E6)!
    static let gray_C2C2C2 = UIColor(hex: 0xC2C2C2)!
    static let gray_EDEDED = UIColor(hex: 0xEDEDED)!
    static let gray_9B9B9B = UIColor(hex: 0x9B9B9B)!

    static let orange_FF9800 = UIColor(hex: 0xFF9800)!
    static let orange_FFF3DF = UIColor(hex: 0xFFF3DF)!
    static let orange_FFD898 = UIColor(hex: 0xFFD898)!
    static let orange_F35F31 = UIColor(hex: 0xF35F31)!
    static let orange_EB9D1C = UIColor(hex: 0xEB9D1C)!
    static let orange_E36C1E = UIColor(hex: 0xE36C1E)!
    static let orange_FF5D2B = UIColor(hex: 0xFF5D2B)!
    static let orange_FF7688 = UIColor(hex: 0xFF7688)!

    static let red_FD3F51 = UIColor(hex: 0xFD3F51)!
    static let red_FF53B4 = UIColor(hex: 0xFF53B4)!
    static let red_F9038B = UIColor(hex: 0xF9038B)!
    static let red_FF2151 = UIColor(hex: 0xFF2151)!
    static let red_FF4526 = UIColor(hex: 0xFF4526)!
    static let red_FF314A = UIColor(hex: 0xFF314A)!
    static let red_FF3333 = UIColor(hex: 0xFF3333)!
    static let red_FF3B10 = UIColor(hex: 0xFF3B10)!
    static let red_FF7856 = UIColor(hex: 0xFF7856)!
    static let red_D0021B = UIColor(hex: 0xD0021B)!
    static let red_980000 = UIColor(hex: 0x980000)!
    static let red_D81C15 = UIColor(hex: 0xD81C15)!
    static let red_F86270 = UIColor(hex: 0xF86270)!
    static let red_FD495A = UIColor(hex: 0xFD495A)!
    static let red_EC5F8C = UIColor(hex: 0xEC5F8C)!
    static let red_E34E92 = UIColor(hex: 0xE34E92)!
    static let red_FF4FF5 = UIColor(hex: 0xFF4FF5)!
    static let red_FF4D42 = UIColor(hex: 0xFF4D42)!
    static let red_EC3232 = UIColor(hex: 0xEC3232)!
    static let red_FF4040 = UIColor(hex: 0xFF4040)!
    static let red_E6654B = UIColor(hex: 0xE6654B)!
    static let red_9D450E = UIColor(hex: 0x9D450E)!
    static let red_FF8E65 = UIColor(hex: 0xFF8E65)!
    static let red_FF9090 = UIColor(hex: 0xFF9090)!
    static let red_C52B00 = UIColor(hex: 0xC52B00)!
    static let red_CC4738 = UIColor(hex: 0xCC4738)!
    static let red_E44537 = UIColor(hex: 0xE44537)!
    static let red_EA85CA = UIColor(hex: 0xEA85CA)!
    static let red_FF5D5D = UIColor(hex: 0xFF5D5D)!
    static let red_FF6B89 = UIColor(hex: 0xFF6B89)!
    static let red_FF6095 = UIColor(hex: 0xFF6095)!
    static let red_FFE0F0 = UIColor(hex: 0xFFE0F0)!
    static let red_FF5757 = UIColor(hex: 0xFF5757)!
    static let red_FF834A = UIColor(hex: 0xFF834A)!
    static let red_F93B7C = UIColor(hex: 0xF93B7C)!
    static let red_FD5765 = UIColor(hex: 0xFD5765)!
    static let red_FCE3E6 = UIColor(hex: 0xFCE3E6)!
    static let red_7C2201 = UIColor(hex: 0x7C2201)!
    static let red_913232 = UIColor(hex: 0x913232)!

    static let yellow_FF9000 = UIColor(hex: 0xFF9000)!
    static let yellow_FFC507 = UIColor(hex: 0xFFC507)!
    static let yellow_FFDA65 = UIColor(hex: 0xFFDA65)!
    static let yellow_FF7700 = UIColor(hex: 0xFF7700)! /// 首充
    static let yellow_FFECDF = UIColor(hex: 0xFFECDF)! /// 首充
    static let yellow_FFE200 = UIColor(hex: 0xFFE200)!
    static let yellow_FFE1AF = UIColor(hex: 0xFFE1AF)!
    static let yellow_FFE252 = UIColor(hex: 0xFFE252)!
    static let yellow_FFE2D3 = UIColor(hex: 0xFFE2D3)!
    static let yellow_FFE2C7 = UIColor(hex: 0xFFE2C7)!
    static let yellow_FEC714 = UIColor(hex: 0xFEC714)!
    static let yellow_FFF1A3 = UIColor(hex: 0xFFF1A3)!
    static let yellow_FFB02E = UIColor(hex: 0xFFB02E)!
    static let yellow_FFCD18 = UIColor(hex: 0xFFCD18)!
    static let yellow_FFA400 = UIColor(hex: 0xFFA400)!
    static let yellow_FEBA15 = UIColor(hex: 0xFEBA15)!
    static let yellow_C6A47E = UIColor(hex: 0xC6A47E)!
    static let yellow_977045 = UIColor(hex: 0x977045)!
    static let yellow_F8E71C = UIColor(hex: 0xF8E71C)!
    static let yellow_FFA22B = UIColor(hex: 0xFFA22B)!
    static let yellow_FFBA15 = UIColor(hex: 0xFFBA15)!
    static let yellow_FFBD1E = UIColor(hex: 0xFFBD1E)!
    static let yellow_C28542 = UIColor(hex: 0xC28542)!
    static let yellow_FF9646 = UIColor(hex: 0xFF9646)!
    static let yellow_FFAD33 = UIColor(hex: 0xFFAD33)!
    static let yellow_FF6212 = UIColor(hex: 0xFF6212)!
    static let yellow_EB9200 = UIColor(hex: 0xEB9200)!
    static let yellow_FF9400 = UIColor(hex: 0xFF9400)!
    static let yellow_FF8A2E = UIColor(hex: 0xFF8A2E)!
    static let yellow_FFDA6B = UIColor(hex: 0xFFDA6B)!
    static let yellow_FFF8C6 = UIColor(hex: 0xFFF8C6)!
    static let yellow_FFF5D6 = UIColor(hex: 0xFFF5D6)!
    static let yellow_FFCF66 = UIColor(hex: 0xFFCF66)!
    static let yellow_FFEC00 = UIColor(hex: 0xFFEC00)!
    static let yellow_FFF0C9 = UIColor(hex: 0xFFF0C9)!
    static let yellow_FFF2DB = UIColor(hex: 0xFFF2DB)!
    static let yellow_E7A436 = UIColor(hex: 0xE7A436)!
    static let yellow_FF6B49 = UIColor(hex: 0xFF6B49)! /// 首充
    static let yellow_FFA558 = UIColor(hex: 0xFFA558)! /// 首充
    static let yellow_FF8930 = UIColor(hex: 0xFF8930)! /// 首充
    static let yellow_F5A623 = UIColor(hex: 0xF5A623)! /// 首充
    static let yellow_FF9F00 = UIColor(hex: 0xFF9F00)! /// 首充
    static let yellow_FFBE22 = UIColor(hex: 0xFFBE22)! /// 首充
    static let yellow_FFF252 = UIColor(hex: 0xFFF252)! /// 首充
    static let yellow_FFED96 = UIColor(hex: 0xFFED96)!
    static let yellow_FFF5CA = UIColor(hex: 0xFFF5CA)!
    static let yellow_FFF58D = UIColor(hex: 0xFFF58D)!
    static let yellow_FFEE76 = UIColor(hex: 0xFFEE76)!

    static let blue_7F40FF = UIColor(hex: 0x7F40FF)!
    static let blue_6AB0FF = UIColor(hex: 0x6AB0FF)!
    static let blue_6B50D8 = UIColor(hex: 0x6B50D8)!
    static let blue_B879EC = UIColor(hex: 0xB879EC)!
    static let blue_26DAC3 = UIColor(hex: 0x26DAC3)!
    static let blue_219EFF = UIColor(hex: 0x219EFF)!
    static let blue_3983FE = UIColor(hex: 0x3983FE)!
    static let blue_4A9FFF = UIColor(hex: 0x4A9FFF)!
    static let blue_288AFF = UIColor(hex: 0x288AFF)!
    static let blue_3883FF = UIColor(hex: 0x3883FF)!
    static let blue_995AFF = UIColor(hex: 0x995AFF)!
    static let blue_2612FF = UIColor(hex: 0x2612FF)!
    static let blue_00B4FF = UIColor(hex: 0x00B4FF)!
    static let blue_44CCEE = UIColor(hex: 0x44CCEE)!
    static let blue_8FB9E8 = UIColor(hex: 0x8FB9E8)!
    static let blue_0091FF = UIColor(hex: 0x0091FF)!
    static let blue_E6F9FF = UIColor(hex: 0xE6F9FF)!
    static let blue_95C9FF = UIColor(hex: 0x95C9FF)!
    static let blue_5C99FF = UIColor(hex: 0x5C99FF)!
    static let blue_5977BD = UIColor(hex: 0x5977BD)!
    static let blue_98B6FF = UIColor(hex: 0x98B6FF)!
    static let blue_6692FF = UIColor(hex: 0x6692FF)!
    static let blue_954FFF = UIColor(hex: 0x954FFF)!
    static let blue_8670FF = UIColor(hex: 0x8670FF)! // 发布动态
    static let blue_D5CDFF = UIColor(hex: 0xD5CDFF)! // 发布动态
    static let blue_6D54FF = UIColor(hex: 0x6D54FF)! // 发布动态
    static let blue_4E19FC = UIColor(hex: 0x4E19FC)! // 首充
    static let blue_8719FC = UIColor(hex: 0x8719FC)! // 首充
    static let blue_47A2F2 = UIColor(hex: 0x47A2F2)! // 漂流瓶

    

    static let gold_FFEDCA = UIColor(hex: 0xFFEDCA)! // 贵族金色
    static let gold_FFDFAD = UIColor(hex: 0xFFDFAD)! // 贵族金色
    static let gold_FFE6B6 = UIColor(hex: 0xFFE6B6)! // 贵族金色
    static let gold_FFEAA1 = UIColor(hex: 0xFFEAA1)! // 贵族金色
    static let gold_FFD29E = UIColor(hex: 0xFFD29E)! // 贵族金色
    static let gold_E5BD90 = UIColor(hex: 0xE5BD90)! // 贵族金色
    static let gold_524B4B = UIColor(hex: 0x524B4B)! // 贵族金色
    static let gold_FFD79A = UIColor(hex: 0xFFD79A)! // 贵族金色

    static let silver_889BC1 = UIColor(hex: 0x889BC1)!

    static let cyan_EAF9F6 = UIColor(hex: 0xEAF9F6)!
    static let cyan_1BC9A6 = UIColor(hex: 0x1BC9A6)!
    static let cyan_EEFDFF = UIColor(hex: 0xEEFDFF)!
    static let cyan_1ED6B9 = UIColor(hex: 0x1ED6B9)!
    static let cyan_7AD6DA = UIColor(hex: 0x7AD6DA)!
    static let cyan_19C8A5 = UIColor(hex: 0x19C8A5)!
    static let cyan_73FFED = UIColor(hex: 0x73FFED)!

    #if DEBUG
    static func debugRandom() -> UIColor {
        let colors: [UIColor] = [.cyan, .blue, .yellow, .purple, .red, .orange, brown]
        return colors.randomElement()!
    }
    #endif
}
