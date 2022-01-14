//
//  HomeHeader.swift
//  Armapp
//
//  Created by Katherine Lee on 1/2/22.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 110, style: .continuous)
                .fill(Color.white)
                .frame(width: 450, height: 450)
                .offset(y: -340)
            
                    //Greeting
                   
            VStack {
                HStack {
                    //User button
                    Button(action: {
    //                    selectedTab = 1
                    }, label: {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 45))
                    })
                        .foregroundColor(.black)
//                                .offset(x:-50)
                        .padding()
                    
                     Spacer()
                    
                    //Page title
                    Text("Home")
                        .font(.title)
                    
                    Spacer()
                    
                    //Battery icon
                    Image(systemName: "battery.50")
                        .font(.system(size: 30.0))
                        .padding()
                }
//                        .padding(.horizontal, 40)
//                        .padding(.top)
                .frame(width: UIScreen.main.bounds.width-30, alignment: .center)
                    
                    Spacer()
                
                //Greeting
                VStack (alignment: .trailing) {
                    Text("Welcome Back,")
                       
                    Text("User!")
                }
                    .font(.largeTitle.weight(.heavy))
                    .offset(x:45, y: -200)
                            
                Spacer()
            }
        }

    }
}


struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
            .previewLayout(.device)
    }
}
