//
//  Data.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import Foundation

struct Product: Hashable {    
    let productName: String
    let imageName: String
    let brandName: String
}

var shoes = [
    Product(productName: "Airforce 1", imageName: "Nike", brandName: "Nike"),
    Product(productName: "Samba", imageName: "Adidas", brandName: "Adidas"),
    Product(productName: "Ugg Boots", imageName: "Ugg", brandName: "Ugg")
]

var shirts = [
    Product(productName: "Short Sleeve Button Down", imageName: "Sunnow", brandName: "Sunnow"),
    Product(productName: "Lounge Long Sleeve", imageName: "Skims", brandName: "Skims"),
    Product(productName: "Pink Polo T-Shirt", imageName: "Polo", brandName: "Ralph Lauren")
]

var jackets = [
    Product(productName: "Puffer Jacket", imageName: "NorthFace", brandName: "North Face"),
    Product(productName: "Fleece Pullover", imageName: "Patagonia", brandName: "Patagonia"),
    Product(productName: "Retro Jean Jacket", imageName: "Levis", brandName: "Levi's")
]

var bottoms = [
    Product(productName: "501 Light Wash", imageName: "LeviJean", brandName: "Levi's"),
    Product(productName: "Black Trousers", imageName: "AliceOlivia", brandName: "Alice+Olivia"),
    Product(productName: "Tennis Skirt", imageName: "Tennis", brandName: "Alo")
]
