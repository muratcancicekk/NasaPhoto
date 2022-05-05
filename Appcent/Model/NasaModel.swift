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






