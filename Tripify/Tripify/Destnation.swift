//
//  Destnation.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI

struct Destnation: View {
    @State private var date = Date()
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                Image("ch 1 logo")
                    .resizable()
                    .padding(.bottom, 430)
                    .frame(width:200,height:630)
                    .aspectRatio(contentMode: .fit)
                Menu("Destiniation") {
                    Button("Saudi Arabia, Riyadh", action: {})
                    Button("Italy, Rome", action: {})
                    Button("Turkey, Ankara", action: {})
                    Button("Egypt, Cairo", action: {})
                    Button("Korea, Seoul", action: {})
                    Button("Spain, Madrid", action: {})
                    Button("United Arab Emirates, Abu Dhabi", action: {})
                    Button("France, Paris", action: {})
                    
                    
                }
                .frame(width: 150, height: 40)
                .background(Color("Green"))
                .cornerRadius(15)
                .tint(.black)
                .position(x:190,y:560)
                DatePicker(
                    "From",
                    selection: $date,
                    displayedComponents: [.date]
                    
                )
                .padding([.top, .leading], 100.0)
                .frame(width: 130.0, height: 50.0)
                .accentColor(.brown)
                DatePicker(
                    "To",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .padding(.top, 200.0)
                .padding(.leading,100)
                .frame(width: 130.0, height: 50.0)
                .accentColor(.brown)
                Text("From")
                    .padding([.top, .trailing], 100.0)
                    .padding(.leading,-80)
                Text("To")
                    .padding(.top,200)
                    .padding(.leading,-110)
                NavigationLink(destination: MainView()){Text("Go")}
                    .frame(width: 150, height: 40)
                    .background(Color("LightPink"))
                    .cornerRadius(15)
                    .tint(.black)
                    .position(x:190,y:610)
                
            }
        }
    }}

struct Destnation_Previews: PreviewProvider {
    static var previews: some View {
        Destnation()
    }
}
