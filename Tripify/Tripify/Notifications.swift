//
//  Notifications.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 05/04/1444 AH.
//

import SwiftUI

struct Notifications: View {
    @State var WeatherOn = false
    @State var ReminderOn = false
    var body: some View {
        ZStack { LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
        startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea() }
        
        Text("Notifications").font(.largeTitle).position(x:200,y:-40)
        Text("If you want to be notified about how the weather is like during your trip, please turn on the notification button.").padding(10).foregroundColor(.gray).position(x:200,y:-30).font(.caption)
        
            Toggle(isOn:$WeatherOn) {
                Text("Weather Notification")
            }
                .padding(10)
                .font(.title)
                .frame(width: 350, height: 50.0)
                .background(Color.init("Green"))
                .cornerRadius(15)
                .position(x:200,y:-100)
                .tint(Color.init("LightPink"))
        
        Text("If yoou want to be reminded about your flight time, please turn on the notifcations button.").padding(20).foregroundColor(.gray).position(x:200,y:-110).font(.caption)
        
        Toggle(isOn:$ReminderOn) {
            Text("Reminder Notification")
        }
            .padding(10)
            .font(.title)
            .frame(width: 350, height: 50.0)
            .background(Color.init("Green"))
            .cornerRadius(15)
            .position(x:200,y:-180)
            .tint(Color.init("LightPink"))


    }
    
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
