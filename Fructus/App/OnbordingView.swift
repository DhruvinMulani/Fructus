//
//  OnbordingView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-19.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits:[Fruit] = fruitsData
    //MARK: Properties

    
    //MARK: Body

    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit:  item)
               
        }//: Loop
        }//: Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical)
    }
}

//MARK: Preview
#Preview {
    OnboardingView(fruits: fruitsData)
}
