//
//  ContentView.swift
//  MNP-App
//
//  Created by Tara Yu on 11/6/21.
//  Collaborators: Tara Yu, Isabella Wloch, Katherine Lee, add your names!! *****
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int = 0

//    init() {
//        UITabBar.appearance().barTintColor = .black
//    }
    var body: some View {
                
        //adding views to TabBar
        TabView(selection: $selection) {
            HomeView()
                .tag(0)
            UserView()
                .tag(1)
            MicView()
                .tag(2)
            SettingsView()
                .tag(3)
            AnalyticsView()
                .tag(4)
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        //Tab bar display
        Divider()
        
        TabBarView(selection: $selection)
            .overlay(TabBarView(selection: $selection), alignment: .bottom)

        
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
    }
}
