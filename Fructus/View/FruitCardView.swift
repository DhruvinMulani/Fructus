//
//  FruitCardView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-19.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: Properties
    
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    //MARK: Body
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                //Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 15 ), radius: 8,x:6, y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //Fruit: Title
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0,green: 0,blue: 0),radius: 2,x:2,y:2)
                //Fruit: Headline
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                //Button: Start
                StartButtonView()
            }//:VSTACK
        }//:ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        

    }
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
}
