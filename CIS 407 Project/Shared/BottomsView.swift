//
//  BottomsView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 5/3/22.
//

import SwiftUI

struct BottomsView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        List {
            ForEach(data.bottoms, id: \.self) { bottom in
                HStack {
                    if let image = bottom.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(bottom.brandName)
                            .font(.title)
                    
                        Text(bottom.productName)
                    }
                }
            }
        }
        .navigationBarTitle("Bottoms")
        .toolbar {
            ToolbarItem {
                NavigationLink(destination: AddProductView(productType: "bottoms"), label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

struct BottomsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BottomsView()
        }
    }
}
