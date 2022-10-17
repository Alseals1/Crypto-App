//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Alandis Seals on 10/17/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}
