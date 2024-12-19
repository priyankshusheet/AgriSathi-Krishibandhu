//
//  CommunityModel.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import Foundation

struct ForumPost: Identifiable {
    let id = UUID()
    let author: String
    let content: String
    let date: Date
}

