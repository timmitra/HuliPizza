//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
      VStack {
        Text("Menu")
        List(0 ..< 5) { item in
          HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
            VStack {
              Text("Huli Chicken Pizza")
              HStack {
                ForEach(0..<4){ item in
                  Image("Pizza Slice")
                }
              }
            }
            Spacer()
          }
        }
      }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
