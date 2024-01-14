// 

import SwiftUI

struct TransactionsView: View {
    let transactions: [Transaction]
    
    var body: some View {
        List(transactions, id: \.self) { transaction in
            TransactionRow(transaction: transaction)
                .listRowSeparator(.hidden)
//                .listRowInsets(EdgeInsets())  // WRONG
        }
        .listStyle(.plain)
    }
}

struct TransactionsHeader: View {
    var body: some View {
        HStack {
            Text("Latest Entries")
                .font(.josefinBold(size: 22))
                .foregroundColor(.mineShaft_100)
                .padding(.leading, .keyline)
            Spacer()
            Button {
                print("🐉 Edit button was tapped")
            } label: {
                
                R.image.elipsesDiscs()!.image
                    .symbolBackground(color: .governor_100.opacity(0.51), cornerRadius: 8)
                    .cornerRadius(8)
                    .padding(.small)
            }
            .padding(.trailing, .keyline)
        }
    }
}

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.mineShaft_100.opacity(0.20))
    }
}
