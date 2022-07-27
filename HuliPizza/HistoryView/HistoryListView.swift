//
//  PizzaHistory.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct HistoryListView: View {
  var body: some View {
    VStack {
      List(0..<5) { item in
        HistoryRowView()
      }
    }
  }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
      HistoryListView()
    }
}
