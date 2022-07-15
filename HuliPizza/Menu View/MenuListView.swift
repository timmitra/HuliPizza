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
          MenuRowView()
        }
      }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
