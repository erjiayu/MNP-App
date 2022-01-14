//
//  BearLogo.swift
//  MNP-App
//
//  Created by Tara Yu on 11/20/21.
//

import SwiftUI

struct BearLogo: View {
    var body: some View {
        Image("Bear")
            .resizable()
            .frame(width: 130.0, height: 180)
    }
}

struct BearLogo_Previews: PreviewProvider {
    static var previews: some View {
        BearLogo()
    }
}
