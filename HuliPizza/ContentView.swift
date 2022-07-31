//
//  ContentView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-12.
//

import SwiftUI

struct ContentView: View {
  @State var orderModel:OrderModel
  @State var isMenuDisplayed: Bool = true
  
    var body: some View {
      VStack {
      //  ContentHeaderView() .layoutPriority(2)
        Button(action: { self.isMenuDisplayed.toggle() }) {
          PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
        }
        MenuListView()
          .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
        OrderListView()
          .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
        Spacer()
      }
      .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView(orderModel: OrderModel())
        ContentView(orderModel: OrderModel() )
          .colorScheme(.dark)
          .background(Color.black)
          .previewDevice("iPad Pro (9.7-inch)")
      }
    }
}
