// 

import SwiftUI

struct SymbolBackgroundModifier: ViewModifier {
    var color: Color
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(color)
                .frame(width: 44, height: 44)
            content
        }
    }
}

extension View {
    func symbolBackground(color: Color, cornerRadius: CGFloat) -> some View {
        self.modifier(SymbolBackgroundModifier(color: color, cornerRadius: cornerRadius))
    }
}
