//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct SettingsRowView: View {
    var name : String
    var Content : String? = nil
    var LinkLabel : String? = nil
    var LinkDestination : String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4 )

            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (Content != nil) {
                    Text(Content!)
                } else if(LinkLabel != nil && LinkDestination != nil){
                    Link(LinkLabel!, destination: URL(string: "https://\(LinkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)            }
                else {
                        EmptyView()
                }
                
            }
        }    }
}

#Preview {
    SettingsRowView(name: "Developer", Content: "John / Jane")
}
 
