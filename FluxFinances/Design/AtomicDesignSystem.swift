//

import UIKit
import SwiftUI

extension UIColor {
    static var _mainBackgroundColor = UIColor.white
    static var _secondaryBackgroundColor = UIColor(hex: "#EEEEEEFF")

    // MARK: - Primary Colors
    static var viking_100 = UIColor(hex: "#7FC4DCFF")!
    static var viking_90  = UIColor(hex: "#8CCAE0FF")!
    static var viking_80  = UIColor(hex: "#99D0E3FF")!
    static var viking_60  = UIColor(hex: "#B2DCEAFF")!
    static var viking_40  = UIColor(hex: "#CCE7F1FF")!
    static var viking_20  = UIColor(hex: "#E5F3F8FF")!
    static var viking_10  = UIColor(hex: "#F3FAFCFF")!
    
    // MARK: - Neutral Colors
    static var mineShaft_100 = UIColor(hex: "#2f2f2fFF")!
    static var mineShaft_90  = UIColor(hex: "#444444FF")!
    static var mineShaft_80  = UIColor(hex: "#595959FF")!
    static var mineShaft_60  = UIColor(hex: "#828282FF")!
    static var mineShaft_40  = UIColor(hex: "#ACACACFF")!
    static var mineShaft_30  = UIColor(hex: "#B6B6B6FF")!
    static var mineShaft_20  = UIColor(hex: "#D5D5D5FF")!
    static var mineShaft_10  = UIColor(hex: "#EBEBEBFF")!
    
    // MARK: - Supporting Colors
    static var governor_100 = UIColor(hex: "#3B3DBF51")!
    static var governor_90  = UIColor(hex: "#4F51C6FF")!
    static var governor_80  = UIColor(hex: "#6264CCFF")!
    static var governor_60  = UIColor(hex: "#898BD9FF")!
    static var governor_40  = UIColor(hex: "#B1B1E5FF")!
    static var governor_20  = UIColor(hex: "#D8D8F2FF")!
    static var governor_10  = UIColor(hex: "#ECECF9FF")!

}

extension Color {
    static var viking_100 = Color(uiColor: .viking_100)
    static var viking_90  = Color(uiColor: .viking_90)
    static var viking_80  = Color(uiColor: .viking_80)
    static var viking_60  = Color(uiColor: .viking_60)
    static var viking_40  = Color(uiColor: .viking_40)
    static var viking_20  = Color(uiColor: .viking_20)
    static var viking_10  = Color(uiColor: .viking_10)
    
    static var mineShaft_100 = Color(uiColor: .mineShaft_100)
    static var mineShaft_90  = Color(uiColor: .mineShaft_90)
    static var mineShaft_80  = Color(uiColor: .mineShaft_80)
    static var mineShaft_60  = Color(uiColor: .mineShaft_60)
    static var mineShaft_40  = Color(uiColor: .mineShaft_40)
    static var mineShaft_30  = Color(uiColor: .mineShaft_30)
    static var mineShaft_20  = Color(uiColor: .mineShaft_20)
    static var mineShaft_10  = Color(uiColor: .mineShaft_10)
    
    static var governor_100 = Color(uiColor: .governor_100)
    static var governor_90  = Color(uiColor: .governor_90)
    static var governor_80  = Color(uiColor: .governor_80)
    static var governor_60  = Color(uiColor: .governor_60)
    static var governor_40  = Color(uiColor: .governor_40)
    static var governor_20  = Color(uiColor: .governor_20)
    static var governor_10  = Color(uiColor: .governor_10)
}

// MARK: Not in Style Guide
extension Color {
    static var lightBlue: Color { Color(UIColor(hex: "#7FC3DB51")!) }
    static var darkBlue: Color  { Color(UIColor(hex: "#7FC2DAFF")!) }
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
    static func josefinBold(size: CGFloat = FontSize.medium.rawValue) -> Font {
        UIFont(name: "JosefinSansRoman-Bold", size: size)!.font
    }
    
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
