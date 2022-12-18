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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    GroupBox(label: HStack{
                        Text("CUSTOMISATION".uppercased()).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "paintbrush")
                    }){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("RESTARTED")
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("RESTART")
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: HStack{
                        Text("Application".uppercased()).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "apps.iphone")
                    }){
                        SettingRowView(name: "Developer", content: "ikakooo")
                        SettingRowView(name: "Designer", content: "ikakooo")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
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
