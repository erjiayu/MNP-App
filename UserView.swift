//
//  UserView.swift
//  Armapp
//
//  Created by Katherine Lee on 1/1/22.
//

import SwiftUI

struct UserView: View {
    let profileLinkNames: [String] = ["Profile", "Friends", "Tips"]
        
    var body: some View {
        
        VStack {
            // profile pic
            HStack{
                Spacer()
                Circle()
                    .fill(Color.blue)
                    .frame(width: 250, height: 125)
                Spacer()
            }
            
            VStack{
                Text("Michael")
                    .font(.title)
                Text("User since 9/2021")
                    .foregroundColor(Color.gray)
            }
            .offset(y:10)
                        
            // list of subpages
            NavigationView {
                VStack {
                    ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    UserLink(profileLinkName: profileLinkName)
                    }
                Spacer()
                }
            }
            
            // comments section
            HStack {
                Text("Questions or Comments?")
                    .foregroundColor(Color.gray)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(.gray))
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
            .offset(y:-50)
        }
        .offset(y:50)
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
