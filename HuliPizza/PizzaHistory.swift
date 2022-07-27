//
//  PizzaHistory.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct PizzaHistory: View {
  var body: some View {
    VStack {
      List(0..<5) { item in
        HStack {
          Image("1_100w")
          VStack {
            Text("Huli Chicken")
            Spacer()
          }
        }
      }
    }
  }
}

struct PizzaHistory_Previews: PreviewProvider {
    static var previews: some View {
      PizzaHistory()
    }
}
