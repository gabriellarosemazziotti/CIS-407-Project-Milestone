//
//  JacketsView.swift
//  CIS 407 Project
//
//  Created by Gabriella Mazziotti on 4/26/22.
//

import SwiftUI

struct JacketsView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        List {
            ForEach(data.jackets, id: \.self) { jacket in
                HStack {
                    if let image = jacket.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(jacket.brandName)
                            .font(.title)
                    
                        Text(jacket.productName)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem {
                NavigationLink(destination: AddProductView(productType: "jackets"), label: {
                    Image(systemName: "plus")
                })
            }
        }
        .navigationBarTitle("Jackets")
    }
}

struct JacketsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            JacketsView()
        }
    }
}
