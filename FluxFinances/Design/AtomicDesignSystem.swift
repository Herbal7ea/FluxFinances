//

import UIKit
import SwiftUI

extension UIColor {
    static var _mainBackgroundColor = UIColor.white
    static var _secondaryBackgroundColor = UIColor(hex: "#EEEEEEFF")
    
    static var mineShaft_100 = UIColor(hex: "#2f2f2fFF")!
    static var mineShaft_90  = UIColor(hex: "#444444FF")!
    static var mineShaft_80  = UIColor(hex: "#595959FF")!
    static var mineShaft_60  = UIColor(hex: "#828282FF")!
    static var mineShaft_40  = UIColor(hex: "#ACACACFF")!
    static var mineShaft_30  = UIColor(hex: "#B6B6B6FF")!
    static var mineShaft_20  = UIColor(hex: "#D5D5D5FF")!
    static var mineShaft_10  = UIColor(hex: "#EBEBEBFF")!
}

extension Color {
    static var mineShaft_100 = Color(uiColor: .mineShaft_100)
    static var mineShaft_90  = Color(uiColor: .mineShaft_90)
    static var mineShaft_80  = Color(uiColor: .mineShaft_80)
    static var mineShaft_60  = Color(uiColor: .mineShaft_60)
    static var mineShaft_40  = Color(uiColor: .mineShaft_40)
    static var mineShaft_30  = Color(uiColor: .mineShaft_30)
    static var mineShaft_20  = Color(uiColor: .mineShaft_20)
    static var mineShaft_10  = Color(uiColor: .mineShaft_10)
}

// Spacing
extension CGFloat {
    static var xxsmall       : CGFloat = 2
    static var xsmall        : CGFloat = 4
    static var small         : CGFloat = 8
    static var keyline       : CGFloat = 20
    static var mediumSmall   : CGFloat = 12
    static var medium        : CGFloat = 16
    static var large         : CGFloat = 24
    static var xlarge        : CGFloat = 32
    static var xxlarge       : CGFloat = 64
    static var xxxlarge      : CGFloat = 128
    static var lineHeight    : CGFloat = 28
    static var dividerHeight : CGFloat = 0.5
}

extension CGSize {
    static var avatar = CGSize(width: 28, height: 28)
}

// MARK: - Style Colors
extension UIColor {
    static let _primary_text            = UIColor(hex: "#616061FF")!
    static let _primary_text_emphasis   = UIColor(hex: "#1D1C1DFF")!
    static let _divider                 = UIColor(hex: "#DDDDDDFF")!
}


struct StyleClass {
    let font: FontType
    let color: UIColor
}

extension StyleClass {
    static var text_primary          = StyleClass(font: FontType.regular, color: ._primary_text)
    static var text_primary_emphasis = StyleClass(font: FontType.bold,    color: ._primary_text_emphasis)
}

enum FontType {
    // Starting with simple modifiers
    case regular,
         bold
//         italic
         
    var font: UIFont {
        switch self {
        case .regular:
            return UIFont(name: "JosefinSansRoman-SemiBold", size: FontSize.normal.rawValue)!
        case .bold:
            return UIFont(name: "JosefinSansRoman-Regular",  size: FontSize.normal.rawValue)!
//        case .italic:
        }
    }
}

extension Font {
    static func josefinSemiBold(size: CGFloat = FontSize.medium.rawValue) -> Font {
        UIFont(name: "JosefinSansRoman-SemiBold", size: size)!.font
    }

    static func josefinRegular(size: CGFloat = FontSize.normal.rawValue) -> Font {
        UIFont(name: "JosefinSansRoman-Regular",  size: size)!.font
    }
}

enum FontSize: CGFloat {
    case xs        =  8,
         small     = 10,
         sm_normal = 12,
         normal    = 14,
         medium    = 18,
         large     = 24,
         xl        = 32,
         xxl       = 71,
         xxxl      = 75
}

extension UILabel {
    func apply(style: StyleClass) {
        font      = style.font.font
        textColor = style.color
    }
}
