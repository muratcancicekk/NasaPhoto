//
//  RoverModel.swift
//  Appcent
//
//  Created by Murat Çiçek on 5.05.2022.
//

import Foundation

// MARK: - Rover
struct Rover: Codable, Hashable {
    let id: Int?
    let name: String?
    let landingDate, launchDate: String?
    let status: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case landingDate = "landing_date"
        case launchDate = "launch_date"
        case status
    }
}

enum RoverName: String, Codable, Hashable {
    case curiosity = "Curiosity"
    case spirit = "Spirit"
}

enum Status: String, Codable, Hashable {
    case active = "active"
}
