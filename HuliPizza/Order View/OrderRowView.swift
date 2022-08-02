//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct OrderRowView: View {
  var orderItem: OrderItem
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Image(systemName: "\(orderItem.id).square")
        Text(orderItem.description)
          .font(.headline)
        Spacer()
        Text(orderItem.formattedExtendedPrice)
          .bold()
      }
      Text(orderItem.comments)
    }
  }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
        .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
