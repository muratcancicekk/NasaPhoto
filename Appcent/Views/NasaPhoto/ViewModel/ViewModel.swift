//
//  ViewModel.swift
//  Appcent
//
//  Created by Murat Çiçek on 29.04.2022.
//

import Foundation

import Foundation
import SwiftUI

enum StatusLoading {
    case none
    case loading
    case finished
}

class CuriosityViewModel: ObservableObject {

    @Published var status: StatusLoading = .none
    @Published var list = [Photo]()
    @Published var filters = [Photo]()
    @Published var pageName: TabName = .none
    @Published var cellIndex = 0
    @Published var pageNumber = 1
    @Published var filterStr = ""
    

    func filterPhoto() {
        self.filterStr = filterStr
        var photoFiltered: [Photo] {
            get {
                (filterStr.isEmpty)
                    ? list
                : list.filter { $0.camera?.name?.range(of: filterStr, options: .caseInsensitive) != nil }
            }
        }
        self.filters = photoFiltered
        self.cellIndex = 0
        
    }

    func fetchList( page: Int) {
        if self.list.isEmpty {
            status = .loading
        }

        if self.pageName == .Curiosity && filterStr.isEmpty || filterStr == "MAST"  {
            NetworkManager().fetch(url: "https://api.nasa.gov/mars-photos/api/v1/rovers/\(self.pageName)/photos?sol=1000&page=\(page)&api_key=gGu0wmHcFhpqOe1hw99E71RD3QhfOhNffe1c8CEV") { (responce: Result<Nasa, Error>) in
                switch responce {
                case .success(let success):
                    DispatchQueue.main.async {
                        if let succes = success.photos {
                            self.list.append(contentsOf: succes)
                            self.filterPhoto()
                            self.status = .finished
                        }
                        print(self.filters)
                    }
                    print(success)
                case .failure(let failure):
                    print(failure)
                }
            }
        }
        
        else  {
            NetworkManager().fetch(url: "https://api.nasa.gov/mars-photos/api/v1/rovers/\(self.pageName)/photos?sol=1000&api_key=gGu0wmHcFhpqOe1hw99E71RD3QhfOhNffe1c8CEV") { (responce: Result<Nasa, Error>) in
                switch responce {
                case .success(let success):
                    DispatchQueue.main.async {
                        if let succes = success.photos {
                            self.list = succes
                            self.filterPhoto()
                            self.status = .finished
                        }
                        print(self.filters)
                    }
                    print(success)
                case .failure(let failure):
                    print(failure)
                }
            }
        }


    }
    func shouldLoadData() {
        if self.cellIndex % 20 == 0  {
            self.pageNumber += 1
            fetchList( page: pageNumber)
        }
        
    }
}
