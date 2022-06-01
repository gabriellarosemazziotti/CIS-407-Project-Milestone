//
//  ShoesView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 4/26/22.
//

import SwiftUI

struct ShoesView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        List {
            ForEach(data.shoes, id: \.self) { shoe in
                HStack {
                    if let image = shoe.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(shoe.brandName)
                            .font(.title)
                    
                        Text(shoe.productName)
                    }
                }
            }
        }
        .navigationBarTitle("Shoes")
        .toolbar {
            ToolbarItem {
                NavigationLink(destination: AddProductView(productType: "shoes"), label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

struct ShoesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShoesView()
        }
    }
}
