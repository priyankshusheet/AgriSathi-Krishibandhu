//
//  InsuranceView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct InsuranceView: View {
    @State private var cropName: String = ""
    @StateObject private var insuranceService = InsuranceService()
    
    var body: some View {
        VStack {
            TextField("Enter Crop Name", text: $cropName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Get Insurance Details") {
                insuranceService.fetchInsuranceDetails(for: cropName)
            }
            .padding()
            
            if !insuranceService.insuranceDetails.isEmpty {
                Text(insuranceService.insuranceDetails)
                    .padding()
            }
        }
        .padding()
        .navigationTitle("Crop Insurance")
    }
}


#Preview {
    InsuranceView()
}
