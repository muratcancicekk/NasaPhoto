//
//  CuriosityCar.swift
//  Appcent
//
//  Created by Murat Çiçek on 28.04.2022.
//

import SwiftUI
import Kingfisher

struct CuriosityCar: View {
    init(pageName: TabName) {
        self.pageName = pageName
    }
    @State private var currentPage: Int = 1
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    @State var isShow: Bool = false
    let pageName: TabName
    @StateObject var viewModel = CuriosityViewModel()

    @State var photo = Photo.emptyPhoto

    var body: some View {
        ZStack {
            VStack {
                if viewModel.status == .none || viewModel.status == .loading {
                    ProgressView()
                }
                else {
                    VStack {
                        VStack() {
                            HStack(spacing: 60) {
                                Menu {
                                    ForEach(CameraName.categories, id: \.self) { camera in
                                        Button {
                                            viewModel.filterStr = camera.rawValue
                                            viewModel.fetchList(page: currentPage)
                                        }
                                        label: {
                                            Text(camera.rawValue)
                                        }
                                    }
                                }
                                label: {
                                    Text(Constants.filters)
                                        .foregroundColor(Color.black)
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .padding().background(Color.white)
                                        .cornerRadius(8)
                                }
                                Spacer()
                                Button {
                                    viewModel.filterStr = Constants.empty
                                    viewModel.fetchList( page: currentPage)
                                }
                                label: {
                                    Text(Constants.all_image)
                                        .foregroundColor(Color.black)
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .padding()
                                        .background(.white)
                                        .cornerRadius(8)
                                }
                            }.padding()

                        }
                            .frame(width: width, height: heigth * 0.1)
                            .background(.orange)
                        Spacer()
                        if viewModel.filters.count > 0 && viewModel.filters.count < 18 {
                            List(1...viewModel.filters.count, id: \.self) { index in
                                ContentView(nasaPhoto: viewModel.filters[index - 1]).onTapGesture {
                                    photo = viewModel.filters[index - 1]
                                    isShow.toggle()
                                }
                            }
                        }
                        else if viewModel.filters.count > 18 {
                            List(viewModel.filters, id: \.self) { index in

                                ContentView(nasaPhoto: index).onAppear {
                                    print(viewModel.pageNumber)
                                    print(index)
                                    viewModel.cellIndex += 1
                                    viewModel.shouldLoadData()
                                }.onTapGesture {
                                    isShow.toggle()
                                    photo = index

                                }

                            }
                        }
                        else if viewModel.filters.isEmpty {
                            VStack {
                                Image(ImageConstants.space)
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                                Text(Constants.search_not)
                            }
                                .padding(50)
                                .background(.red.opacity(0.4))
                                .cornerRadius(4)
                                .foregroundColor(.white)
                                .font(.title)

                        }
                        Spacer()
                    }
                }
            }.onAppear {
                viewModel.pageName = pageName
                isShow = false
                viewModel.fetchList( page: 1)
            }.blur(radius: isShow == true ? 15 : 0)

            if isShow {
                DetailPage(photo: photo, isShow: $isShow)
            }
        }
    }
}

struct CuriosityCar_Previews: PreviewProvider {
    static var previews: some View {
        CuriosityCar(pageName: .none)
    }
}
