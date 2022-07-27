//
//  ContentHeaderView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-15.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
      VStack {
        ZStack {
          Image("Surf Board")
            .resizable()
            .scaledToFit()
          Text("Huli Pizza Company")
            .font(Font.custom("Avinir-Black", size: 20))
            .foregroundColor(.white)
        }
      }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
        .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
