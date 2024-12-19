//
//  GovernmentService.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation

class GovernmentService {
    func fetchSchemes() -> [GovernmentScheme] {
        return [
            GovernmentScheme(name: "PM-Kisan", description: "Direct income support to farmers", link: URL(string: "https://pmkisan.gov.in")!),
            GovernmentScheme(name: "PMFBY", description: "Crop insurance scheme", link: URL(string: "https://pmfby.gov.in")!)
        ]
    }
}

