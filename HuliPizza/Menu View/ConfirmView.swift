//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
  @Binding var isPresented: Bool
    @ObservedObject var orderModel:OrderModel
  @Binding var quanity: Int
  @Binding var size: Size
  @State var comments: String = ""
  @EnvironmentObject var settings:UserPreferences
  @State var quantity: Int = 1
  let sizes: [Size] = [.small, .medium, .large]
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
      orderModel.add(menuID: menuID, size: size, quantity: quanity, comments: comments)
      isPresented = false // her we dismiss the alert
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
//                .onTapGesture(count:2) {
//                  self.isPresented = false
//                }
                .gesture(
                TapGesture(count: 2)
                  .onEnded {
                    self.isPresented = false
                  }
                )
            Divider()
          Text("Confirm your order of \(quanity) \(size.formatted()) \(name) pizza")
                .font(.headline)
          TextField("Add your comments here", text: $comments)
            .background(Color("G4"))
          SizePickerView(size: $size)
            .padding()
          QuantityStepperView(quantity: $quantity)
          Spacer()
          HStack {
            Button(action: addItem){
                  Text("Add")
                      .font(.title)
                  .padding()
                  .background(Color("G4"))
                  .cornerRadius(10)
            }
            Spacer()
            Button(action: { self.isPresented = false }){
                  Text("Cancel")
                      .font(.title)
                  .padding()
                  .background(Color("G4"))
                  .cornerRadius(10)
            }
          }.padding()
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
      ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quanity: .constant(1), size: .constant(.small))
      // .constant because quantity is bound
        .environmentObject(UserPreferences())
    }
}
