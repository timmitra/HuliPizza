//
//  PizzaHistoryView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct PizzaHistoryView: View {
  var body: some View {
    VStack {
      ContentHeaderView()
      PageTitleView(title: "Pizza History")
      HistoryListView()
      Spacer()
    }
  }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHistoryView()
    }
}
