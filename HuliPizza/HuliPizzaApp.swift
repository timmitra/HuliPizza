//
//  HuliPizzaApp.swift
//  HuliPizza
//
//  Created by Tim Mitra on 2022-07-12.
//

import SwiftUI

@main
struct HuliPizzaApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView(orderModel: OrderModel())
            RootTabView()
            .environmentObject(UserPreferences()) // register the class with "()"
        }
    }
}
