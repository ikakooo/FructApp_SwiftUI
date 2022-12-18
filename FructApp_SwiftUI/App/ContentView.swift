//
//  ContentView.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/16/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailedView(fruit: fruit)){
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 8)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView(isPresented: $isShowingSettings)
                    }
            )
        }// MARK: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
