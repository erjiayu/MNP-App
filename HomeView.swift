//
//  HomeView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct BackgroundHelper: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            // find first superview with color and make it transparent
            var parent = view.superview
            repeat {
                if parent?.backgroundColor != nil {
                    parent?.backgroundColor = UIColor.clear
                    break
                }
                parent = parent?.superview
            } while (parent != nil)
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

struct HomeView: View {
    
//    @Binding var selectedTab:Int
    @State var index = 0
    
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
            
            ZStack{
        
                //White Banner
//                GeometryReader { geometry in
                VStack {
                    RoundedRectangle(cornerRadius: 110, style: .continuous)
                    .fill(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 1.2, height: UIScreen.main.bounds.height * 0.6)
                    
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.8)
                }

                //Greeting
                GeometryReader { geo in
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
                    .position(x: geo.size.width * 0.5, y: geo.size.height * 0.15)
                    
                    //Greeting
                    VStack (alignment: .trailing) {
                        Text("Welcome Back,")
                           
                        Text("User!")
                    }
                        .font(.largeTitle.weight(.heavy))
                        .position(x: geo.size.width * 0.6, y: geo.size.height * -0.12)
                        .frame(height: geo.size.height * 0.1 )
//                        .offset(x:45, y: -200)
                                
//                    Spacer()
                    
                    TabView(selection: self.$index) {
                        ForEach(0...5,id: \.self) {index in
                            BatteryAsset()
    //                            Image("Asset")
    //                            .resizable()
    //                            .scaledToFit()
    //                            .frame(width: UIScreen.main.bounds.width * 0.87, height: UIScreen.main.bounds.height * 0.5)
                            .aspectRatio(contentMode: .fit)
                            .background(BackgroundHelper())
                            .tag(index)
                        }
                    }
                    
                    Spacer()
                        .frame(height: geo.size.height * 0.1)
                }
                    
            }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
                
                
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
