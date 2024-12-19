//
//  SupplyChainModel.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation
import CoreData

struct SupplyChain: Identifiable {
    let id: UUID
    let cropName: String
    let quantity: Double
    let pricePerKg: Double
    let date: Date
}

class SupplyChainModel: ObservableObject {
    @Published var supplyChainData: [SupplyChain] = []

    func fetchSupplyChainData() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<SupplyChainEntity> = SupplyChainEntity.fetchRequest()
        
        do {
            let results = try context.fetch(fetchRequest)
            self.supplyChainData = results.map { entity in
                SupplyChain(id: entity.id ?? UUID(),
                            cropName: entity.cropName ?? "Unknown",
                            quantity: entity.quantity,
                            pricePerKg: entity.pricePerKg,
                            date: entity.date ?? Date())
            }
        } catch {
            print("Failed to fetch supply chain data: \(error.localizedDescription)")
        }
    }

    func addSupplyChainData(cropName: String, quantity: Double, pricePerKg: Double) {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let newEntity = SupplyChainEntity(context: context)
        newEntity.id = UUID()
        newEntity.cropName = cropName
        newEntity.quantity = quantity
        newEntity.pricePerKg = pricePerKg
        newEntity.date = Date()

        do {
            try context.save()
            fetchSupplyChainData()
        } catch {
            print("Failed to save new supply chain data: \(error.localizedDescription)")
        }
    }
}
