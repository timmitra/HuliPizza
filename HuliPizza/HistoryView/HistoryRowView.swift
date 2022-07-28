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
        .clipShape(Circle())
        .shadow(color: Color.black.opacity(0.5),  radius: 5, x: 5, y: 5)
      Text("Huli Chicken")
        .font(.title)
        .foregroundColor(Color("G3"))
      Spacer()
      Image(systemName: "chevron.right.square")
        .font(.title)
        .foregroundColor(Color("G3"))
    }
  }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
