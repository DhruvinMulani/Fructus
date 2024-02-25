//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                     Link("wikipedia", destination: URL(string:
                        "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")}
                    .font(.footnote)
            }
        }
    }


#Preview {
    SourceLinkView()
}
