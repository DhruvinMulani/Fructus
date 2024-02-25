//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: Properties
    var fruit:Fruit

    //MARK: Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment: .leading, spacing: 20){
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        
                        //nutrients
                        FruitNutrientsView(fruit: fruit)
                        //subheading
                        Text("Learn more about \(fruit.title)".uppercased())

                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(
                                .bottom,40)
                        
                    }//vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                    
                }//vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: Scroll
            .ignoresSafeArea()
        }//: Navigation
    }
}

//MARK: Preview
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
