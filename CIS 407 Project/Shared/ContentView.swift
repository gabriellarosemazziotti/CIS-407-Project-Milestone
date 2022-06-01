//
//  ContentView.swift
//  Shared
//
//  Created by Gabriella Mazziotti on 4/17/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("Shoes", destination: ShoesView())
                    NavigationLink("Jackets", destination: JacketsView())
                    NavigationLink("Bottoms", destination:
                        BottomsView())
                    NavigationLink("Shirts", destination: ShirtsView())
                }
                
                NavigationLink("Suggest an outfit!", destination: OutfitView())                
            }
            .navigationBarTitle("Categories")
            
            
            /*
            VStack { // Stack things vertically
                Text("Nike")
                    .font(.title) // this is called a modifier since we're modififying the Text element.
                    .foregroundColor(.blue)
                
                Text("Air Jordan")
                    .font(.largeTitle)
                    .foregroundColor(.cyan)
                
                Text("Size 9")
                    .font(.headline)
                    .foregroundColor(.red)
            }
            .navigationBarTitle("Shoes")
            */
        }
    }
    
    
    
        /*
        NavigationView{
        
            VStack(spacing: 15){
            
                ZStack(alignment: .top){
                
                Text("Wardrobe").font(.title)
                
                HStack(spacing: 18) {
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("Menu").renderingMode(.original)
            
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                      
                        Image("search").renderingMode(.original)
                    }
                    
                }
                    
                }.background(Color.white)
                .edgesIgnoringSafeArea(.all)
                .padding([.leading, .trailing, .top], 15)
                
                MainView()
                
            }
            .navigationBarBackButtonHidden(true)
            
            .navigationBarHidden(true)
        }
         */
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .padding()
    }
}

    /*
struct MainView : View {
    
    @State var selected = "Shoes"
    var body : some View{
        VStack(spacing: 15){
            HStack{
                ForEach(types, id: \.self){i in
                    HStack{
                        Button(action: {
                            self.selected = i
                        }) {
                            Text(i).padding()
                        }
                        .foregroundColor(self.selected == i ? .white : .black)
                        .background(self.selected == i ? Color.black : Color.clear)
                        .cornerRadius(10)
                        
                        Spacer(minLength: 0)
                    }
                }
            }
        }
    }
}

var types = ["Shoes", "Bottoms", "Tops", "Jackets"]
*/
