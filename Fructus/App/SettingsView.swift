//
//  SettingsView.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct SettingsView: View {
    //MARK: Properties
    //var fruit:Fruit
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnbording: Bool = false

    //MARK: Body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20){
                // MARK: Section 1
                    
                    GroupBox(label: 
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle") ){
                        Divider().padding(.vertical, 4 )
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturallu low in fat, sodium, and calories. None have cholesterol. Fruits are sourses of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                // MARK: Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"))
                             {
                        
                        Divider().padding(.vertical, 4)
                                 
                                 Text("If you wish, you can restart the application by toggle the switch in this box. That was it start onbording process and you will see the welcome screen again.")
                                     .padding(.vertical,8)
                                     .frame(minHeight: 60)
                                     .layoutPriority(1)
                                     .font(.footnote)
                                     .multilineTextAlignment(.leading)
                                 
                                 Toggle(isOn: $isOnbording){
                                     if isOnbording {
                                         Text("Restarted".uppercased())
                                             .fontWeight(.bold)
                                             .foregroundColor(.green)
                                     } else {
                                         Text("Restart".uppercased())
                                             .fontWeight(.bold)
                                         .foregroundColor(Color.secondary)                                     }
                                 }
                                 .padding()
                                 .background(Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                                 
                    }
                    
                // MARK: Section 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        ){
                            SettingsRowView(name: "Developer", Content: "John/ Jane")
                            SettingsRowView(name: "Designer", Content: "Robert/ Petras")
                            SettingsRowView(name: "Compatibility", Content: "iOS 17")
                            SettingsRowView(name: "Website", LinkLabel: "SwiftUI Masterclass", LinkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter", LinkLabel: "@RobertPetras", LinkDestination: "twitter.com/robertpetras")
                            SettingsRowView(name:"swiftUI", Content:"2.0")
                            SettingsRowView(name:"version", Content: "1.1.0")
                         }
              

                }//vstack
                .navigationBarTitle(Text("Setting"),displayMode: .large)
                .navigationBarItems(trailing: Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                
            }//scrollview
        }//navigation
    }
}

#Preview {
    SettingsView()
}
