//
//  DetailPage.swift
//  Appcent
//
//  Created by Murat Çiçek on 3.05.2022.
//

import SwiftUI
import Kingfisher

struct DetailPage: View {
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    @State var photo = Photo.emptyPhoto
    @Binding var isShow: Bool
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(Constants.name + (photo.rover?.name ?? Constants.empty))
                    Spacer()
                    Text(Constants.status + (photo.rover?.status ?? Constants.empty))
                }
                KFImage(URL(string: photo.imgSrc ?? Constants.empty))
                    .resizable()
                    .frame(width:width, height:heigth * 0.20)
                    .cornerRadius(8)
                HStack {
                    Text(Constants.camera + (photo.camera?.fullName ?? Constants.empty))
                        .font(.body)
                        .frame(alignment: .center)
                    Spacer()
                    Text(photo.earthDate ?? Constants.empty)
                }
            }
            Spacer()
            VStack {
                Text(Constants.launch_landing)
                Divider()
                HStack {
                    Text(photo.rover?.launchDate ?? Constants.empty)
                    Text(photo.rover?.landingDate ?? Constants.empty)
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button {
                    isShow.toggle()
                }
                label: {
                    Text(Constants.okay)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(8)
                        .foregroundColor(.orange)
                }
            }
            Spacer()
        }.padding()
            .frame(width: width * 0.8, height: heigth * 0.6)
            .background(.orange.opacity(0.9))
            .cornerRadius(8)
            .foregroundColor(.white)
            .font(.title2.bold())
            .minimumScaleFactor(0.01) }
}



