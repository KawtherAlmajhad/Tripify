//
//  Plans.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 09/04/1444 AH.
//

import SwiftUI

struct Plans: View {
    var body: some View {
        
        ZStack{
            
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            
            VStack{
                
                HStack{
                    
                    
                    Text("")
                        .font(.headline)
                        .frame(width: 20, height:20)
                        .cornerRadius(10)
                        .background(Color.init("LightPink"))
                        .cornerRadius(5)
                        .position(x:30 , y:151)
                    
                    Text("Activities")
                        .position(x:10, y:151)
                        .font(.system(size: 12))
                    
                    Text("")
                    
                        .font(.headline)
                        .frame(width: 20, height:20)
                        .cornerRadius(10)
                        .background(Color.init("Gray"))
                        .cornerRadius(5)
                        .position(x:10 , y:151)
                    
                    Text("Hotels")
                        .font(.system(size: 12))
                        .position(x:-10, y:151)
                  
                    
                    
                    Text("")
                    
                        .font(.headline)
                        .frame(width: 20, height:20)
                        .cornerRadius(10)
                        .background(Color.init("Green"))
                        .cornerRadius(5)
                        .position(x:-12 , y:151)
                    
                    Text("Restaurant")
                        .font(.system(size: 11))
                    .position(x:-20, y:151)   }
                
                HStack{
                    Text("Sunday")
                        .font(.system(size: 25))
                        .position(x:80,y:-152)
                    Text("06 November 2022")
                        .font(.system(size: 17))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                    .position(x:3,y:-150)
                    
                }
                
            }
            
            
            
            
            VStack{
                
                Text("Plaza de Oriente ")
                
                    .frame(width: 300, height: 60)
                    .cornerRadius(10)
                    .background(Color
                    .init("LightPink"))
                    .cornerRadius(10)
              
               
                
                
                
                Text("Amazonico ")
                
                    .frame(width: 300, height: 60)
                    .cornerRadius(10)
                    .background(Color
                    .init("Green"))
                    .cornerRadius(10)
                 
                
                
                
                Text("Four Seasons")
                
                    .frame(width: 300, height: 60)
                    .cornerRadius(10)
                    .background(Color
                    .init("Gray"))
                    .cornerRadius(15)
                 
            }
            
            
            VStack{
                Text("")
                Image(systemName: "circle.fill")
                    .position(x:25 , y:270)
                Image(systemName: "circle.fill")
                    .position(x:25 , y:100)
                Image(systemName: "circle")
                    .position(x:25 , y:-75)
            }
           
                
            Button("➕") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .position(x:320 , y:60)
        
            
            
            Button("Delete") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .foregroundColor(.red)
            .position(x:60 , y:60)
            

        }}}

struct Plans_Previews: PreviewProvider {
    static var previews: some View {
        Plans()
    }
}
