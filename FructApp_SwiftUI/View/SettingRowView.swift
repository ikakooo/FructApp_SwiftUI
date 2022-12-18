//
//  SettingRowView.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/18/22.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: - PROPERTIES
    
    var name:String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if content.isNotNil {
                    Text(content!)
                } else if linkLabel.isNotNil && linkDestination.isNotNil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SettingRowView(name: "Developer", content: "ikakooo")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "Website", linkLabel: "Github", linkDestination: "https://github.com/ikakooo")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
       
    }
}
