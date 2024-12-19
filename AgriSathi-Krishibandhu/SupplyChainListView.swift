//
//  SupplyChainListView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct SupplyChainListView: View {
    @StateObject private var supplyChainModel = SupplyChainModel()

    var body: some View {
        List(supplyChainModel.supplyChainData) { supply in
            VStack(alignment: .leading) {
                Text(supply.cropName)
                    .font(.headline)
                Text("Quantity: \(supply.quantity) kg")
                Text("Price per Kg: ₹\(supply.pricePerKg, specifier: "%.2f")")
                Text("Date: \(formattedDate(supply.date))")
            }
        }
        .onAppear {
            supplyChainModel.fetchSupplyChainData()
        }
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}
