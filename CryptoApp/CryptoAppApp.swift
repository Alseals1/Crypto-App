//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Alandis Seals on 10/17/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    @State private var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarBackButtonHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
