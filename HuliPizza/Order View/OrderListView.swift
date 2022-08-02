//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct OrderListView: View {
  var orderModel: OrderModel // read only so we don't need @Binding
    var body: some View {
      VStack {
        List {
          Section (header: ListHeaderView(orderModel: self.orderModel, text: "Your Order")
          ) {
            ForEach (orderModel.orders) { item in
              OrderRowView(orderItem: item)
            }
            .onDelete(perform: delete)
          }
        }
      }
    }
  func delete(at offsets: IndexSet) {
    orderModel.orders.remove(atOffsets: offsets)
  }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
