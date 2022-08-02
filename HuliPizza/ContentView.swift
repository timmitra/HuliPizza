//
//  ContentView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-12.
//

import SwiftUI

/* Generally, you'll use Observable Objects for your model, such as the Order Model. You use State and Binding for the view and view conditions.
 */

struct ContentView: View {
  @ObservedObject var orderModel:OrderModel
  @State var isMenuDisplayed: Bool = true
  
    var body: some View {
      VStack {
      //  ContentHeaderView() .layoutPriority(2)
        Button(action: { self.isMenuDisplayed.toggle() }) {
          PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
        }
        MenuListView(orderModel: orderModel)
          .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
        OrderListView(orderModel: orderModel)
          .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
          .animation(.spring())
        Spacer()
      }
      
      .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView(orderModel: OrderModel())
          .environmentObject(UserPreferences())
        ContentView(orderModel: OrderModel())
          .environmentObject(UserPreferences())
          .colorScheme(.dark)
          .background(Color.black)
          .previewDevice("iPad Pro (9.7-inch)")
      }
    }
}
