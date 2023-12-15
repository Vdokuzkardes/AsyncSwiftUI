//
//  ContentView.swift
//  AsyncSwiftUI
//
//  Created by Vedat Dokuzkardeş on 5.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
        
        VStack {
            
            AsyncImage(url: URL(string: "https://i.scdn.co/image/56fc3a11d95a9b44dabf22ca2dc56b670541c3f5")!) { image in
                image.resizable().frame(width: 300, height:300, alignment: .center)
            } placeholder: {
                ProgressView()
            }

            
            List(superHeroArray) { Superhero in
                Text(Superhero.name).font(.title3).foregroundColor(.brown)
                
            }.navigationTitle(Text("Superhero Book"))
            }
        }
    }
}

#Preview {
    ContentView()
}
