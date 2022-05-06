//
//  AddProductView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//
import SwiftUI

struct AddProductView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var productName = ""
    @State private var imageName = ""
    @State private var brandName = ""
    
    let productType: String
    
    var body: some View {
        Form {
            TextField("Brand Name", text: $brandName)
            TextField("Product Name", text: $productName)
            TextField("Image Name", text: $imageName)
            Button("Save") {
                let product = Product(productName: productName, imageName: imageName, brandName: brandName)
                
                if productType == "shoes" {
                    shoes.append(product)
                }

                if productType == "shirts" {
                    shirts.append(product)
                }
                
                if productType == "bottoms" {
                    bottoms.append(product)
                }
                
                if productType == "jackets" {
                    jackets.append(product)
                }
                
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationBarTitle("Add Product")
    }
}

struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddProductView(productType: "shoes")
        }
    }
}
