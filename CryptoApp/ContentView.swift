//
//  ContentView.swift
//  CryptoApp
//
//  Created by Alandis Seals on 10/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.theme.backgroundColor
            
            VStack {
                Text("Color")
                    .foregroundColor(Color.theme.accentColor)
                
                Text("Color")
                    .foregroundColor(Color.theme.secondaryTextColor)
                
                Text("Color")
                    .foregroundColor(Color.theme.greenColor)
                
                Text("Color")
                    .foregroundColor(Color.theme.redColor)
            }
            .font(.headline)
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
