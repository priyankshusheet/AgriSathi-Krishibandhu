//
//  SupplyChainEntity+CoreDataProperties.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation
import CoreData

extension SupplyChainEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SupplyChainEntity> {
        return NSFetchRequest<SupplyChainEntity>(entityName: "SupplyChainEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var cropName: String?
    @NSManaged public var quantity: Double
    @NSManaged public var pricePerKg: Double
    @NSManaged public var date: Date?
}
