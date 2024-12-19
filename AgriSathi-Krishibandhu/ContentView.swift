//
//  ContentView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WeatherView()
                .tabItem {
                    Label("Weather", systemImage: "cloud.sun")
                }
            
            SupplyChainView()
                .tabItem {
                    Label("Supply Chain", systemImage: "cart")
                }
            
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "person.3")
                }
            
            GovernmentSchemesView()
                .tabItem {
                    Label("Schemes", systemImage: "newspaper")
                }
            
            InsuranceView()
                .tabItem {
                    Label("Insurance", systemImage: "shield")
                }
        }
    }
}


#Preview {
    ContentView()
}
