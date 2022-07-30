//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct MenuListView: View {
  var menuList = MenuModel().menu
    var body: some View {
      VStack {
        ListHeaderView(text: "Menu")
        List(menuList) { item in
          MenuRowView()
          Text(item.name)
        }
      }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

