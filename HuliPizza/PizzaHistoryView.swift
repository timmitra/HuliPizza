//
//  PizzaHistoryView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-26.
//

import SwiftUI

struct PizzaHistoryView: View {
  @State var imageID: Int = 0
  var body: some View {
    VStack {
      //ContentHeaderView()
      PageTitleView(title: "Pizza History")
      SelectedImageView(image: "\(imageID)_250w")
      HistoryListView(imageID: $imageID)
      Spacer()
    }
  }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHistoryView()
    }
}
