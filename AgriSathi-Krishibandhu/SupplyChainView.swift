//
//  SupplyChainView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct SupplyChainView: View {
    @State private var cropName: String = ""
    @State private var quantity: String = ""
    @State private var pricePerKg: String = ""
    @State private var crops: [SupplyChainEntity] = []
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Add New Crop")) {
                    TextField("Crop Name", text: $cropName)
                    TextField("Quantity", text: $quantity)
                    TextField("Price per Kg", text: $pricePerKg)
                    
                    Button("Add Crop") {
                        guard let qty = Double(quantity), let price = Double(pricePerKg) else { return }
                        CoreDataManager.shared.saveCrop(cropName: cropName, quantity: qty, pricePerKg: price)
                        crops = CoreDataManager.shared.fetchAllCrops()
                    }
                }
            }
            
            List(crops) { crop in
                VStack(alignment: .leading) {
                    Text("Crop: \(crop.cropName)")
                    Text("Quantity: \(crop.quantity) kg")
                    Text("Price: ₹\(crop.pricePerKg) per kg")
                }
            }
        }
        .navigationTitle("Supply Chain")
        .onAppear {
            crops = CoreDataManager.shared.fetchAllCrops()
        }
    }
}


#Preview {
    SupplyChainView()
}
