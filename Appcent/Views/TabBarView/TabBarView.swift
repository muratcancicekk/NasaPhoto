//
//  TabBarView.swift
//  Appcent
//
//  Created by Murat Çiçek on 28.04.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            TabView {
                CuriosityCar(pageName: .Curiosity)
                    .tabItem {
                    Image(systemName: Constants.c)
                    Text(Constants.curiosity)
                }
                CuriosityCar(pageName: .Opportunity)
                    .tabItem {
                    Image(systemName: Constants.o)
                    Text(Constants.opportunity)
                }
                CuriosityCar(pageName: .Spirit)
                    .tabItem {
                    Image(systemName: Constants.s)
                    Text(Constants.spirit)
                }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
