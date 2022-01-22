//
//  MicView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct MicView: View {
    
    @State private var showPopUp: Bool = false
    
    var body: some View {
        VStack {
            Text("Voice Recognition")
            
            Button(action: {
                withAnimation(.linear(duration: 0.3)) {
                    showPopUp.toggle()
                }
            }, label: {
                Image(systemName: "mic")
                    .foregroundColor(Color.white)
            })
                .padding()
                .background(.blue)
                .clipShape(Circle())
            
            MicPopUpView(show: $showPopUp)
        }
            
    }
}

struct MicView_Previews: PreviewProvider {
    static var previews: some View {
        MicView()
    }
}
