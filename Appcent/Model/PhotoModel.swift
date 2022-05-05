//
//  PhotoModel.swift
//  Appcent
//
//  Created by Murat Çiçek on 5.05.2022.
//

import Foundation

// MARK: - Photo
struct Photo: Codable, Hashable {
    let id, sol: Int?
    let camera: Camera?
    let imgSrc: String?
    let earthDate: String?
    let rover: Rover?

    enum CodingKeys: String, CodingKey {
        case id, sol, camera
        case imgSrc = "img_src"
        case earthDate = "earth_date"
        case rover
    }
}
enum CameraName: String, Hashable, CaseIterable {


    case chemcam = "CHEMCAM"
    case fhaz = "FHAZ"
    case mast = "MAST"
    case navcam = "NAVCAM"
    case rhaz = "RHAZ"
    case pancam = "PANCAM"
    static let categories: [CameraName] = [.chemcam, .fhaz, .navcam, .mast, .rhaz, .pancam]

}
