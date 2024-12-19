//
//  WeatherService.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation
import Combine

class WeatherService: ObservableObject {
    @Published var weather: WeatherModel?
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchWeather(for city: String) {
        let apiKey = "YOUR_API_KEY"
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: WeatherModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] result in
                self?.weather = result
            })
            .store(in: &cancellables)
    }
}

