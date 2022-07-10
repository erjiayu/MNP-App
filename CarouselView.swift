//
//  CarouselView.swift
//  MProsth-APP
//
//  Created by Katherine Lee on 7/10/22.
//

import SwiftUI

struct CarouselView: View {
    @Binding var tabs: [Tab]
    @Binding var currInd: Int
    
    @State var fakeInd: Int = 0
    var body: some View {
        TabView(selection: $fakeInd) {
            ForEach(tabs) {tab in
                //Card View
//                VStack(spacing: 18) {
                ZStack {
                    Image("Asset")
                    
//                    Spacer()
                    Text(tab.title)
                        .font(.largeTitle)
                    
                }
            }
        }
    }
}

struct CarouselView_Previews1: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
