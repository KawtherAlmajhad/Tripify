//
//  EmpassyInfo.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI

struct EmpassyInfo: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Embassy Info")
                    .font(.largeTitle)
                Button("Link") {
                    
                }
                .frame(width: 250, height: 50.0)
                .background(Color.init("Green"))
                .tint(.black)
                .cornerRadius(15)

                Button{} label: {
                    Link(destination: URL(string:"tel://+34913302800")!){
                        HStack {
                            Text("Contact Number")
                           
                        }
                    }
                }
                .frame(width: 250, height: 50.0)
                .background(Color.init("LightPink"))
                .tint(.black)
                .cornerRadius(15)
                Button("Location") {
                    
                }
                .frame(width: 250, height: 50.0)
                .background(Color.init("Green"))
                .tint(.black)
                .cornerRadius(15)
             
                    }
                    
                }
                
        }
}

struct EmpassyInfo_Previews: PreviewProvider {
    static var previews: some View {
        EmpassyInfo()
    }
}
