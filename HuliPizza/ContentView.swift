//
//  ContentView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      VStack {
        ContentHeaderView()
          .layoutPriority(2)
        PageTitleView(title: "Order Pizza")
        MenuListView()
          .layoutPriority(1)
        OrderListView()
          .layoutPriority(1)
        Spacer()
      }
      .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
        ContentView()
          .colorScheme(.dark)
          .background(Color.black)
          .previewDevice("iPad Pro (9.7-inch)")
      }
    }
}
