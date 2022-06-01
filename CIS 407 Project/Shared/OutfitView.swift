//
//  OutfitView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import SwiftUI

struct OutfitView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        VStack {
            if let randomShirt = data.shirts.randomElement() {
                VStack {
                    Text(randomShirt.brandName)
                    Text(randomShirt.productName)
                    
                    if let image = randomShirt.image {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            Divider()
            if let randomJacket = data.jackets.randomElement() {
                VStack {
                    Text(randomJacket.brandName)
                    Text(randomJacket.productName)
                    
                    if let image = randomJacket.image {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            Divider()
            if let randomBottom = data.bottoms.randomElement() {
                VStack {
                    Text(randomBottom.brandName)
                    Text(randomBottom.productName)
                    
                    if let image = randomBottom.image {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
                         
            if let randomShoe = data.shoes.randomElement() {
                VStack {
                    Text(randomShoe.brandName)
                    Text(randomShoe.productName)

                    if let image = randomShoe.image {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }
    }
}

struct OutfitView_Previews: PreviewProvider {
    static var previews: some View {
        OutfitView()
    }
}
