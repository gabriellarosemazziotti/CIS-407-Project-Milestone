//
//  AddProductView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//
import SwiftUI

struct AddProductView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var data: Data
    
    @State private var productName = ""
    @State private var brandName = ""
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var photosSourceType: UIImagePickerController.SourceType = .photoLibrary
    
    let productType: String
    
    var body: some View {
        Form {
            TextField("Brand Name", text: $brandName)
            TextField("Product Name", text: $productName)
            
            Button("Choose Photo") {
                photosSourceType = .photoLibrary
                showingImagePicker = true
            }
            
            Button("Take Photo") {
                photosSourceType = .camera
                showingImagePicker = true
            }
            
            Button("Save") {
                let product = Product(productName: productName, brandName: brandName, image: inputImage)
                
                if productType == "shoes" {
                    data.shoes.append(product)
                }

                if productType == "shirts" {
                    data.shirts.append(product)
                }
                
                if productType == "bottoms" {
                    data.bottoms.append(product)
                }
                
                if productType == "jackets" {
                    data.jackets.append(product)
                }
                
                self.presentationMode.wrappedValue.dismiss()
            }
            
            if let inputImage = inputImage {
                Image(uiImage: inputImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                
            }
        }
        .navigationBarTitle("Add Product")
        .sheet(isPresented: $showingImagePicker) {
            PhotoPicker(selectedImage: $inputImage, sourceType: photosSourceType)
        }
    }
}

struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddProductView(productType: "shoes")
        }
    }
}
