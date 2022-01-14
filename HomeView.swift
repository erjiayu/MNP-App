//
//  HomeView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct HomeView: View {
    
//    @Binding var selectedTab:Int
    
    var body: some View {
        
        //set background image
        let background = Image("og-mosaicgradient")
        
        ZStack {
//             fitting background image
                background
                        .resizable()
                        .scaledToFit()
                        .frame(width: 1700.0, height: 1700.0)
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .rotationEffect(.degrees(35))
                        .offset(x: -5, y: 31)
            
                //Header
                HomeHeader()
                        
            
                }
            }
        }
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
