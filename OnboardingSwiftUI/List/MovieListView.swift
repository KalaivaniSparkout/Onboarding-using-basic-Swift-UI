//
//  MovieListView.swift
//  OnboardingSwiftUI
//
//  Created by Hxtreme on 03/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct Movies: Identifiable{
    var id  = UUID()
    var name = String()
    var image = String()
}

struct MovieListView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var isNavigationBarHidden: Bool = true
    
    let movies: [Movies] = [
           Movies(name: "Avengers", image: "1"),
           Movies(name: "Avengers  : Age of Ultron", image: "2"),
           Movies(name: "Avengers : Infinity war", image: "3"),
    Movies(name: "Avengers : End game", image: "4")]
    
    var body: some View {
//        NavigationView {
            List(movies) { movie in
                NavigationLink(destination: DetailView(index: movie.image)) {
                    VStack(alignment: .leading){
                        Image(movie.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        Text(movie.name)
                            .font(.system(size: 15))
                    }
                }
            }
                .navigationBarItems(leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: { Image("back").foregroundColor(Color.white)}))
            .edgesIgnoringSafeArea([.top, .bottom])
//       .edgesIgnoringSafeArea(.all) .navigationBarBackButtonHidden(true).navigationBarTitle(Text(""))
//                .navigationBarHidden(true)
//            .navigationBarItems(leading: Button("Close") {
//                self.detailShowing = false
//            })
//            .onAppear{
//                self.isNavigationBarHidden = true
//            }
//        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
