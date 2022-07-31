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
        ListHeaderView(text: "Your Order")
        List(orderModel.orders) { item in
          OrderRowView(orderItem: item)
        }
      }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
