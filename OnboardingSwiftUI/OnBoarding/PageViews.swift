//
//  PageViews.swift
//  OnboardingSwiftUI
//
//  Created by Hxtreme on 01/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct PageViews: View {
    
    var imageString: String
    var Title: String
    
    var body: some View {
        NavigationView {
        VStack{
            Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
            NavigationLink(destination: MovieListView(isNavigationBarHidden: true)) {
//                EmptyView()
                Text(self.Title)
                }
            }
        }
//        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct PageViews_Previews: PreviewProvider {
    static var previews: some View {
        PageViews(imageString: "movie1", Title: "Movies")
    }
}
