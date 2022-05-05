//
//  CameraModel.swift
//  Appcent
//
//  Created by Murat Çiçek on 5.05.2022.
//

import Foundation
// MARK: - Camera
struct Camera: Codable, Hashable {
    let id: Int?
    let name: String?
    let roverID: Int?
    let fullName: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case roverID = "rover_id"
        case fullName = "full_name"
    }
}

enum FullName: String, Codable, Hashable {
    case chemistryAndCameraComplex = "Chemistry and Camera Complex"
    case frontHazardAvoidanceCamera = "Front Hazard Avoidance Camera"
    case mastCamera = "Mast Camera"
    case navigationCamera = "Navigation Camera"
    case rearHazardAvoidanceCamera = "Rear Hazard Avoidance Camera"
    case panoramicCamera = "Panoramic Camera"
}
