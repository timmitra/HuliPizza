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
        NavigationView{
          List(menuList) { item in
            NavigationLink(destination: MenuDetailView(menuItem: item)) {
              MenuRowView(menuItem: item)
                .listRowInsets(EdgeInsets())
            }
          }
          .navigationTitle("Pizza Order ")
        }
      }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

