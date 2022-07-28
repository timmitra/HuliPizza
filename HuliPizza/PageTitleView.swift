//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct PageTitleView: View {
  var title: String
  var body: some View {
    HStack {
      Spacer()
      Text(title)
        .font(.largeTitle)
      .fontWeight(.heavy)
      .padding(.trailing)
    }.overlay(
      Image(systemName: "chevron.up.square")
        .font(.title)
        .padding()
        ,alignment: .leading
    ).foregroundColor(Color("G1"))
      .background(Color("G4"))
  }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
      PageTitleView(title: "Order Pizza")
    }
}
