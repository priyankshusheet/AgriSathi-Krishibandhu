//
//  WeatherView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct WeatherView: View {
    @StateObject private var weatherService = WeatherService()
    @State private var cityName: String = "Mumbai"
    
    var body: some View {
        VStack {
            TextField("Enter City Name", text: $cityName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Get Weather") {
                weatherService.fetchWeather(for: cityName)
            }
            .padding()
            
            if let weather = weatherService.weather {
                Text("Temperature: \(weather.temperature)°C")
                Text("Condition: \(weather.condition)")
                Text("City: \(weather.cityName)")
            } else {
                Text("Enter a city to get the weather")
            }
        }
        .padding()
        .navigationTitle("Weather")
    }
}

