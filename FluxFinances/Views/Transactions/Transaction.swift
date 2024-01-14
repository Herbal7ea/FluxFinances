// 

import SwiftUI

struct Transaction: Identifiable, Hashable {
    let id: UUID = UUID()
//    var iconName: String
    var type: TransactionType
    var title: String
    var date: String
    var amount: String
    var paymentMethod: String
}

enum TransactionType {
    case food,
         shopping,
         exercise
    
    var image: Image {
        switch self {
        case .food:
            R.image.fastFood()!.image
        case .shopping:
            R.image.shoppingBags()!.image
        case .exercise:
            R.image.bike()!.image
        }
    }
}

