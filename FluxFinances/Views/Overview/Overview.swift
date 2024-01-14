// 

import SwiftUI

struct Overview: View {
    @State var viewModel = OverviewViewModel()
    
    var body: some View {
        VStack {
            TransactionsHeader()
            TransactionsView(transactions: viewModel.transactions)
        }
    }
}

@Observable
class OverviewViewModel {
    let transactions = [
        Transaction(type: .food, title: "Food", date: "2020-02-20", amount: "- $200 + Vat 1%", paymentMethod: "Google Pay"),
        Transaction(type: .exercise, title: "Uber", date: "2020-02-26", amount: "- $18 + Vat 0.8%", paymentMethod: "Cash"),
        Transaction(type: .shopping, title: "Shopping", date: "2020-03-13", amount: "- $400 + Vat 0.12%", paymentMethod: "Paytm")
    ]
}


#Preview {
    ContentView()
}
