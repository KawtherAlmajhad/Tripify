//
//  Verification.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI
import iPhoneNumberField

struct Verification: View {
    @State var countDownTimer = 50
    @State var timerRunning = true
    let timer = Timer.publish(every:1 , on: .main , in: .common).autoconnect()
    @State var text = ""
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                VStack(spacing: (20)){
                    
                    
                    
                    VStack  {
                        Text("Verification").font(.largeTitle)
                            .position(x:190 , y:150)
                        
                        
                        VStack (spacing: (20)){
                            Text("Verify Your Mobile Number").font(.headline)
                                .position(x:190 , y:230)
                            
                            Text("An 4-digit code has been sent to")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                                .position(x:190 , y:250)
                            
                        }}
                    
                    
                    
                    
                    HStack{
                        
                        Button("Change") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .padding(.leading)
                        .position(x:270 , y:285)
                        
                        
                        Text("+966")
                            .offset(x:-135,y:265)
                            .foregroundColor(.gray)
                        
                        iPhoneNumberField("Number", text: $text)
                            .offset(x:100,y:40)
                            .position(x:-150, y:242)
                        
                    }
                    
                    HStack{
                        Text("\(countDownTimer)")
                            .onReceive(timer) { _ in
                                if countDownTimer > 0 && timerRunning {
                                    countDownTimer -= 1
                                    
                                } else {
                                    timerRunning = false
                                    
                                }
                                
                            }
                            .font(.system(size: 15 , weight: .bold))
                            .position(x:300, y:366)
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack(spacing:(2)) {
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        
                            .textFieldStyle(.roundedBorder)
                            .position(x:20 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                            .position(x:25 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                            .position(x:30 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                            .position(x:35 , y:260)
                            .frame(width: 60 , height: 20)
                        
                    }
                    
                    
                    
                    
                    VStack{
                        Text(". The OTP will be expired in ")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                            .position(x:150 , y:270)
                        
                        
                        
                        
                        Text(". Didn’t recive the code? ")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                            .position(x:140 , y:280)
                        
                        
                        
                        Button("Resend") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .position(x:300 , y:270)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    NavigationLink(destination: Destnation()){Text("Verify")}
                        .frame(maxWidth:  .infinity)
                        .foregroundColor(.black)
                        .background(Color.init("Green"))
                        .position(x:50, y:350)
                        .cornerRadius(90)
                        .frame(width: 100 , height: 500)
                    
                    
                    
                    
                    
                }}}}
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}
