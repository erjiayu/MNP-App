////
////  ContentView.swift
////  MNP-App
////
////  Created by Tara Yu on 11/6/21.
////  Collaborators: Tara Yu, Isabella Wloch, Katherine Lee, add your names!! *****
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Color.blue
//            .overlay{
////
//            ZStack {
////                Image("BackgroundGradient")
////                            .resizable()
////                            .frame(width: 2200, height: 2500)
////                            .edgesIgnoringSafeArea(.all)
//            
//                VStack {
//
//                    Text("Welcome Back, Banksy!")
//                        .font(.title)
//                    //MNP_logo() commented out- missing definition (?)
//                }
//                Spacer()
//                
//                Image(systemName: "mic.circle.fill").foregroundColor(Color.blue)
//                    .font(.system(size: 50.0))
//                    .offset(y: 30)
//                    // top white square + bear logo
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 60, style: .continuous)
//                                        .fill(Color.white)
//                                        .frame(width: 450, height: 450)
//                                        .offset(y: -200)
//                                        .overlay(
//                                            VStack {
//                                                HStack {
//                                                    Image(systemName: "person.crop.circle.fill")
//                                                        .font(.system(size: 40.0))
//                                                    Spacer()
//                                                    Text("Home")
//                                                        .font(.title)
//                                                    Spacer()
//                                                    Image(systemName: "battery.50")
//                                                        .font(.system(size: 30.0))
//                                                }
//                                                .padding()
//                                            
//                                                Spacer()
//                                                
//                                                // title
//                                                VStack(alignment: .trailing) {
//                                                    Text("Welcome Back,")
//                                                        .font(.largeTitle)
//                                                        .bold()
//                                                        
//                                                    Text("Banksy!")
//                                                        .font(.largeTitle)
//                                                        .bold()
//                                                }
//                                                .offset(x: 90, y: -270)
//                                                .font(.system(size: 200))
//                                            })
//                        //BearLogo()
//                            .offset(x: -100, y: 10)
//                    }
//                
//                    Spacer()
//                    
//                    // bottom area
//                    ZStack {
//                        // white rectangle area with battery
//                        RoundedRectangle(cornerRadius: 30, style: .continuous)
//                                        .fill(Color.white)
//                                        .frame(width: 373, height: 215)
//                                        .offset(y: -100)
//                                        .overlay(
//                                            VStack {
//                                                Text("Battery Level")
//                                                    .font(.subheadline)
//                                                    .foregroundColor(Color.black)
//                                                Image(systemName: "battery.50")
//                                                    .font(.system(size: 30.0))
//                                                    .foregroundColor(Color.gray)
//                                            }
//                                        )
//                        // bottom bar
//                        
//                        // microphone
//                        Image(systemName: "mic.circle.fill").foregroundColor(Color.blue)
//                            .font(.system(size: 50.0))
//                            .offset(y: 30)
//                        
//                        Spacer()
//
//                        // other buttons
//                        HStack {
//                            Image(systemName: "house.fill")
//                                .foregroundColor(Color.orange)
//                                .font(.system(size: 25.0))
//                            Spacer()
//                            Image(systemName: "person.crop.circle.fill")
//                                .font(.system(size: 25.0))
//                                .padding(.trailing, 50.0)
//                            Spacer()
//                            Image(systemName: "gearshape.fill")
//                                .font(.system(size: 25.0))
//                            Spacer()
//                            Image(systemName: "number.square.fill")
//                                .font(.system(size: 25.0))
//                        }
//                    }
//                    .padding()
//                }
//            }
//        }
//    }
//
//    
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
//            .previewDisplayName("iPhone 12")
//    }
//}
