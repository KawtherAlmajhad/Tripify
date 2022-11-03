//
//  TabBar.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 07/04/1444 AH.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        NavigationView{
            TabView{
 Plans()
                .tabItem{
                    Image(systemName: "plus")
                    Text("Plans")
                }
 Destnation()
                    .tabItem{
                        Image(systemName:"globe")
                        Text("Explore")
                    }
 Settings()
                    .tabItem{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
        }
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}


