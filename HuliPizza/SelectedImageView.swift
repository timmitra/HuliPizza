//
//  SelectedImageView.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-28.
//

import SwiftUI

struct SelectedImageView: View {
  var image: String
    var body: some View {
      Image(image)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.5),  radius: 5, x: 5, y: 5)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
