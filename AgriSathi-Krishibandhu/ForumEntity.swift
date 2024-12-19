//
//  ForumEntity.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation
import CoreData

@objc(ForumEntity)
public class ForumEntity: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var author: String
    @NSManaged public var content: String
    @NSManaged public var date: Date
}

extension ForumEntity {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ForumEntity> {
        return NSFetchRequest<ForumEntity>(entityName: "ForumEntity")
    }
}
