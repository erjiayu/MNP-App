//
//  MicPopUpView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct MicPopUpView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            if show {
                
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                
                // PopUp Window
                VStack(alignment: .center, spacing: 0) {
                    Text("...Listening...")
                        .frame(maxWidth: .infinity)
                        .frame(height: 90, alignment: .center)
                        .font(Font.system(size: 23, weight: .semibold))
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(40)

                    Button(action: {
                        // Dismiss the PopUp
                        withAnimation(.linear(duration: 0.3)) {
                            show = false
                        }
                    }, label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54, alignment: .center)
                            .background(Color.white)
                            .font(Font.system(size: 23, weight: .semibold))
                    }).buttonStyle(PlainButtonStyle())
                        .clipShape(Circle())
                        .offset(y: -10)
                }
                .frame(maxWidth: 300)
                .border(Color.blue, width: 2)
                .background(Color.blue)
                .cornerRadius(30)
            }
        }
        
    }
}

struct MicPopUpView_Previews: PreviewProvider {
    static var previews: some View {
        MicPopUpView(show: .constant(true))
    }
}
