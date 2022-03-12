//
//  BatteryAsset.swift
//  M-App
//
//  Created by Katherine Lee on 2/12/22.
//

import SwiftUI



struct BatteryAsset: View {
    
//    @State var width: CGFloat = 0
//    @State var height: CGFloat = 0
//    @State var image: UIImage
//
//    func image(_ name: String) -> UIImage {
//        let image = UIImage(named: name)!
//        let width = UIScreen.main.bounds.width * 0.95
//        let height = UIScreen.main.bounds.height * 0.5
//
//        self.width = width
//        self.height = height
//
//        return image
//    }

    
    var body: some View {
        
        ZStack {
            GeometryReader { geo in
//                Image(uiImage: image("Asset"))
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: width, height: height)
//                .position(x: geo.size.width * 0.5)
            Image("Asset")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(height: geo.size.height * 1.2)
                .position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
            
            VStack{
                Text("Battery Level")
                    .font(.largeTitle.weight(.semibold))
//                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: geo.size.width)
                    .position(x: geo.size.width * 0.4, y: geo.size.height * 0.25)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.87, height: UIScreen.main.bounds.height * 0.3)
        }
//        .frame(height: UIScreen.main.bounds.height * 0.4, alignment: .top)
    }
}

struct BatteryAsset_Previews: PreviewProvider {
    static var previews: some View {
        BatteryAsset()
            .previewLayout(.sizeThatFits)
    }
}
