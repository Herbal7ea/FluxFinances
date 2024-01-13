//

import SwiftUI


struct Transaction: Identifiable, Hashable {
    let id: UUID = UUID()
    var iconName: String
    var title: String
    var date: String
    var amount: String
    var paymentMethod: String
}

struct TransactionRow: View, Identifiable {
    let id: UUID
    var iconName: String
    var title: String
    var date: String
    var amount: String
    var paymentMethod: String
    var cornerRadius: CGFloat = 10

    init(transaction: Transaction) {
        self.id = transaction.id
        self.iconName = transaction.iconName
        self.title = transaction.title
        self.date = transaction.date
        self.amount = transaction.amount
        self.paymentMethod = transaction.paymentMethod
    }
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.system(size: 25))
                .scaledToFit()
                .foregroundColor(.darkBlue) // Symbol color
                .frame(width: 44, height: 44)
                .background(Color.lightBlue)
                .cornerRadius(cornerRadius)
                .padding(.small)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.josefinSemiBold())
                    .foregroundColor(.mineShaft_100)
                Text(date)
                    .font(.josefinRegular())
                    .foregroundColor(.mineShaft_30)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text(amount)
                    .font(.josefinSemiBold(size: 14))
                    .foregroundColor(.mineShaft_100)
                Text(paymentMethod)
                    .font(.josefinRegular())
                    .foregroundColor(.mineShaft_30)
            }
        }.task {
            printSystemFonts()
        }
    }
}

struct ContentView: View {
    let transactions = [
        Transaction(iconName: "takeoutbag.and.cup.and.straw.fill", title: "Groceries", date: "Jan 10", amount: "$20.00", paymentMethod: "Card"),
        Transaction(iconName: "takeoutbag.and.cup.and.straw.fill", title: "Utilities", date: "Jan 11", amount: "$100.00", paymentMethod: "Online"),
        Transaction(iconName: "takeoutbag.and.cup.and.straw.fill", title: "Rent", date: "Jan 12", amount: "$800.00", paymentMethod: "Check")
    ]

    var body: some View {
        List(transactions, id: \.self) { transaction in
            TransactionRow(transaction: transaction)
        }
    }
}

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

#Preview {
    ContentView()
}

extension Color {
    static var lightBlue: Color { Color(UIColor(hex: "#7FC3DB51")!) }
    static var darkBlue: Color  { Color(UIColor(hex: "#7FC2DAFF")!) }
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
