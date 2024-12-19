//
//  InsuranceService.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Combine

class InsuranceService: ObservableObject {
    @Published var insuranceDetails: String = ""
    
    func fetchInsuranceDetails(for crop: String) {
        // Simulating an API call
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.insuranceDetails = "Insurance details for \(crop) are..."
        }
    }
}

