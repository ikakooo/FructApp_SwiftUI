//
//  SettingsView.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/17/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Binding var isPresented: Bool
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label: HStack{
                        Text("Fructus".uppercased()).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                        
                    }){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10.0) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - SECTION 2
                    
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: HStack{
                        Text("Application".uppercased()).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "apps.iphone")
                    }){
                        SettingRowView(name: "Developer", content: "ikakooo")
                        SettingRowView(name: "Designer", content: "ikakooo")
                        SettingRowView(name: "Compatibility", content: "iOS 15")
                        SettingRowView(name: "Github", linkLabel: "Profile", linkDestination: "github.com/ikakooo")
                        SettingRowView(name: "Version", content: "1.0.0")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action:{
                    isPresented = false
                }){
                   Image(systemName: "xmark")
                })
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    
   
    
    static var previews: some View {
        @State var isShowingSettings: Bool = true
        
       return SettingsView(isPresented: $isShowingSettings)
    }
}
