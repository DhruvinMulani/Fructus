//
//  StartButtonView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-19.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        Button(action:{
            print("Exit the onbording")
        })    {
            HStack (spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
           
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white, style: StrokeStyle(lineWidth: 1.25)))
        }//.Button
        
        .accentColor(Color.white)
    }
}

//MARK: Preview
#Preview {
    StartButtonView()
}
