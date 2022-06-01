//
//  Data.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import Foundation
import UIKit

struct Product: Hashable {    
    let productName: String
    let brandName: String
    var image: UIImage?
}

class Data: ObservableObject {
    @Published var shoes = [
        Product(productName: "Airforce 1", brandName: "Nike", image: UIImage(named: "Nike")),
        Product(productName: "Samba", brandName: "Adidas", image: UIImage(named: "Adidas")),
        Product(productName: "Ugg Boots", brandName: "Ugg", image: UIImage(named: "Ugg")),
        Product(productName: "Blazer", brandName: "Nike", image: UIImage(named: "Blazer"))
    ]

    @Published var shirts = [
        Product(productName: "Short Sleeve Button Down", brandName: "Sunnow", image: UIImage(named: "Sunnow")),
        Product(productName: "Lounge Long Sleeve", brandName: "Skims", image: UIImage(named: "Skims")),
        Product(productName: "Pink Polo T-Shirt", brandName: "Ralph Lauren", image: UIImage(named: "Polo"))
    ]

    @Published var jackets = [
        Product(productName: "Puffer Jacket", brandName: "North Face", image: UIImage(named: "NorthFace")),
        Product(productName: "Fleece Pullover", brandName: "Patagonia", image: UIImage(named: "Patagonia")),
        Product(productName: "Retro Jean Jacket", brandName: "Levi's", image: UIImage(named: "Levis"))
    ]

    @Published var bottoms = [
        Product(productName: "501 Light Wash", brandName: "Levi's", image: UIImage(named: "LeviJean")),
        Product(productName: "Black Trousers", brandName: "Alice+Olivia", image: UIImage(named: "AliceOlivia")),
        Product(productName: "Tennis Skirt", brandName: "Alo", image: UIImage(named: "Tennis"))
    ]
}

