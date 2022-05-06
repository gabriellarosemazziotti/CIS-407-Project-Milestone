//
//  OutfitView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import SwiftUI

struct OutfitView: View {
    @State var randomShoe = shoes.randomElement()
    @State var randomShirt = shirts.randomElement()
    @State var randomBottom = bottoms.randomElement()
    @State var randomJacket = jackets.randomElement()

    var body: some View {
        VStack {
            VStack {
                Text(randomShirt!.productName)
                Image(randomShirt!.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            VStack {
                Text(randomJacket!.productName)
                Image(randomJacket!.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            VStack {
                Text(randomBottom!.productName)
                Image(randomBottom!.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            VStack {
                Text(randomShoe!.productName)
                Image(randomShoe!.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
        }
        .onAppear() {
            randomShoe = shoes.randomElement()
            randomShirt = shirts.randomElement()
            randomBottom = bottoms.randomElement()
            randomJacket = jackets.randomElement()

        }
    }
}

struct OutfitView_Previews: PreviewProvider {
    static var previews: some View {
        OutfitView()
    }
}
