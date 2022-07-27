//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct OrderRowView: View {
  var body: some View {
    HStack(alignment: .firstTextBaseline) {
      Text("You order item")
        .font(.headline)
      Spacer()
      Text("0.00")
        .bold()
    }
  }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
        .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
