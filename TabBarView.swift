//
//  TabBarView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selection: Int
    @Namespace private var currentTab
    
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            ForEach(tabs.indices) {index in
                GeometryReader { geometry in
                    VStack(spacing: 4) {
                        if selection == index {
                            Color(.label)
                                .frame(height: 2)
                                .offset(y: -8)
                                .matchedGeometryEffect(id: "currentTab", in: currentTab)
                        }
                        
                        if tabs[selection].label == "Analytics" &&
                            tabs[index].label == "Analytics" {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(25))
                        } else {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(0))
                        }
                        
                        Text(tabs[index].label)
                            .font(.caption2)
                            .fixedSize()
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: geometry.size.width / 2, height: 44, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == index ? Color(.orange) : .black)
                    
                    //adding functionality
                    .onTapGesture {
                        withAnimation {
                            selection = index
                        }
                    }
                }
                .frame(height: 44, alignment: .bottom)
            }
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}

let tabs = [
    TabStruct(image: "house.fill", label: "Home"),
    TabStruct(image: "person.fill", label: "User"),
    TabStruct(image: "mic.fill", label: "Microphone"),
    TabStruct(image: "slider.vertical.3", label: "Settings"),
    TabStruct(image: "gear", label: "Analytics")
]
