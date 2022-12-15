//
//  ContentView.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/16/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List(fruits.shuffled()) { fruit in
                FruitRowView(fruit: fruit)
                    .padding(.vertical, 8)
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
