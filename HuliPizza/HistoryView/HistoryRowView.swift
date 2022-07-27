//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct HistoryRowView: View {
  var body: some View {
    HStack(alignment:.top) {
      Image("1_100w")
      Text("Huli Chicken")
    }
  }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
