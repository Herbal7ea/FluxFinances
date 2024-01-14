// 

import SwiftUI

struct TransactionRow: View, Identifiable {
    let id: UUID
//    var iconName: String
    var type: TransactionType
    var title: String
    var date: String
    var amount: String
    var paymentMethod: String
    var cornerRadius: CGFloat = 10

    init(transaction: Transaction) {
        self.id = transaction.id
//        self.iconName = transaction.iconName
        self.type = transaction.type
        self.title = transaction.title
        self.date = transaction.date
        self.amount = transaction.amount
        self.paymentMethod = transaction.paymentMethod
    }
    
    var body: some View {
        VStack {
            HStack {
                type.image
                    .symbolBackground(color: Color.lightBlue, cornerRadius: 10)
                    .cornerRadius(cornerRadius)
                    .padding(.small)

    //            Image(systemName: iconName)
    //                .font(.system(size: 25))
    //                .scaledToFit()
    //                .foregroundColor(.darkBlue) // Symbol color
    //                .frame(width: 44, height: 44)
    //                .background(Color.lightBlue)
    //                .cornerRadius(cornerRadius)
    //                .padding(.small)

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
            }
//            Divider()
            CustomDivider()
        }.task {
//            printSystemFonts()
        }
    }
}
