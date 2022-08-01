//
//  PizzaHistory.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct HistoryListView: View {
  var historyModel = HistoryModel()
  var body: some View {
    VStack {
      List(historyModel.historyItems) { item in
        HistoryRowView(historyItem: item)
      }
    }
  }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
      HistoryListView()
    }
}
