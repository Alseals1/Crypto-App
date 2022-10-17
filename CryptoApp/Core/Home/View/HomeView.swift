//
//  HomeView.swift
//  CryptoApp
//
//  Created by Alandis Seals on 10/17/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showPorfolio: Bool = false
    
    var body: some View {
        ZStack {
            // MARK: BackgroundLayer
            Color.theme.backgroundColor
            
            // MARK: Content Layer
            VStack {
               homeHeader
                
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
        }
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPorfolio ? "plus" : "info")
                .animation(.none, value: showPorfolio)
                .background(
                CircleButtonAnimationView(animate: $showPorfolio)
                )
            
            Spacer()
            
            Text(showPorfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accentColor)
                .animation(.none, value: showPorfolio)
            
            Spacer()
            
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPorfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPorfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
