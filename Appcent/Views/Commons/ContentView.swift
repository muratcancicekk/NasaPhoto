//
//  ContentView.swift
//  Appcent
//
//  Created by Murat Çiçek on 28.04.2022.
//

import SwiftUI
import struct Kingfisher.KFImage

struct ContentView: View {


    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    let nasaPhoto: Photo
    init (nasaPhoto: Photo) {
        self.nasaPhoto = nasaPhoto
    }

    var body: some View {
        ZStack {
            Color.white.opacity(0.5).ignoresSafeArea()
            VStack {
                HStack {
                    KFImage(URL(string: nasaPhoto.imgSrc ?? Constants.empty))
                        .resizable()
                        .frame(width: width * 0.4, height: heigth * 0.15)
                        .cornerRadius(8)
                    Spacer()
                    Text(nasaPhoto.camera?.fullName ?? Constants.empty)
                    Spacer()
                }
            }.cornerRadius(12)
        }
    }
}

