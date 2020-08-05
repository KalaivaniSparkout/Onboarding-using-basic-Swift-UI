//
//  OnboardingView.swift
//  OnboardingSwiftUI
//
//  Created by Hxtreme on 01/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    
    var pages = [
        UIHostingController(rootView: PageViews(imageString: "movie1", Title: "Movie")),
        UIHostingController(rootView: PageViews(imageString: "movie2", Title: "Flim")),
        UIHostingController(rootView: PageViews(imageString: "movie3", Title: "Camera")),
        UIHostingController(rootView: PageViews(imageString: "movie4", Title: "Cinema"))
    ]
    
    var body: some View {
        PageViewController(viewControllers: pages)
            .frame(height: 600)
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
