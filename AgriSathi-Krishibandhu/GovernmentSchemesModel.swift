//
//  GovernmentSchemesModel.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation

struct GovernmentScheme: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let link: URL
}

