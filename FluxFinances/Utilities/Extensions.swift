// 

import UIKit
import SwiftUI

// NOTE: From Paul Hudson/HackingWithSwift: https://www.hackingwithswift.com/example-code/uicolor/how-to-convert-a-hex-color-to-a-uicolor
extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}


public func printSystemFonts() {
    // Use this identifier to filter out the system fonts in the logs.
    let identifier: String = "[SYSTEM FONTS]"
    // Here's the functionality that prints all the system fonts.
    for family in UIFont.familyNames as [String] {
        debugPrint("\(identifier) FONT FAMILY :  \(family)")
        for name in UIFont.fontNames(forFamilyName: family) {
            debugPrint("\(identifier) FONT NAME :  \(name)")
        }
    }
}

extension UIFont {
    var font: Font { Font(self) }
}

extension UIImage {
    var image: Image { Image(uiImage: self) }
}


// https://danielsaidi.com/blog/2022/05/25/generating-a-random-color
public extension Color {
    static func random(randomOpacity: Bool = false) -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: randomOpacity ? .random(in: 0...1) : 1
        )
    }
}
