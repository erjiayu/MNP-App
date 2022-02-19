//
//  UserView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct UserView: View {
    let profileLinkNames: [String] = ["Friends", "Tips", "Settings"]
        
    var body: some View {
        NavigationView {
            VStack {
                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                UserLink(profileLinkName: profileLinkName)
            }
            Spacer()
        }
        .navigationBarTitle("Tara Yu")
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserLink: View {
    let profileLinkName: String     // Add parameter for profileLinkName
    
    var body: some View {
        VStack {
                HStack {
                    Text(profileLinkName)
                        .font(.body)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.blue))
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                Divider()
            }
        }
        
    }
}
