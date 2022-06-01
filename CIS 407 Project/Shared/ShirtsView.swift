//
//  ShirtsView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import SwiftUI

struct ShirtsView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        List {
            ForEach(data.shirts, id: \.self) { shirt in
                HStack {
                    if let image = shirt.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    }

                    
                    VStack(alignment: .leading) {
                        Text(shirt.brandName)
                            .font(.title)
                    
                        Text(shirt.productName)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem {
                NavigationLink(destination: AddProductView(productType: "shirts"), label: {
                    Image(systemName: "plus")
                })
            }
        }
        .navigationBarTitle("Shirts")
    }
}

struct ShirtsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShirtsView()
        }
    }
}
