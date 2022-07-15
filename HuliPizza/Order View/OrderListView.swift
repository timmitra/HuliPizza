//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
      VStack {
        Text("Your Order")
        List(0..<5) { item in
          HStack(alignment: .firstTextBaseline) {
            Text("You order item")
            Spacer()
            Text("0.00")
          }
        }
      }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
