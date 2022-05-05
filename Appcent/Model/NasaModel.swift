// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let nasa = try? newJSONDecoder().decode(Nasa.self, from: jsonData)

import Foundation

// MARK: - Nasa
struct Nasa: Codable, Hashable {
    let photos: [Photo]?
}

extension Photo {
    static let emptyRover = Rover(id: 23, name: "sda", landingDate: "asd", launchDate: "asd", status: "asd")
    static let emptyCamera = Camera(id: 2, name: "ss", roverID: 3, fullName: "asd")
    static let emptyPhoto = Photo(id: 3, sol: 2, camera: emptyCamera, imgSrc: "3", earthDate: "sad", rover: emptyRover)
}

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
