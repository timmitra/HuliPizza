//
//  RootTabView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-08-01.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
      TabView {
        ContentView(orderModel: OrderModel())
          .tabItem{
            Image(systemName: "cart")
            Text("Order")
          }
        PizzaHistoryView()
          .tabItem{
            Image(systemName: "book")
            Text("History")
          }
      }
      .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView().environmentObject(UserPreferences())
    }
}
