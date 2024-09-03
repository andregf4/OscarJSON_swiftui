//
//  MovieInfoView.swift
//  OscarAPI
//
//  Created by Andre Gerez Foratto on 25/05/24.
//

import SwiftUI

struct MovieInfoView: View {
    
    @State var info: Movie
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, .red, .red], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: info.poster)) { image in
                    image
                        .resizable()
                        .frame(width: 200, height: 300)
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                }
                .shadow(radius: 5)
                .padding()
                
                VStack {
                    Text("**Movie:**")
                    Text(info.movie)
                }
                .font(.system(size: 25))
                Divider()
                Text("**Director:**")
                Text(info.director)
                Divider()
                Text("**Genre:**")
                ForEach(info.genre, id: \.self) { g in
                    Text(g)
                }
                Divider()
                Text("**Year:**")
                Text(info.year)
            }
        }
    }
}

#Preview {
    MovieInfoView(info: Movie(year: "2000", movie: "American Beauty", genre: ["Drama"], director: "Sam Mendes", poster: "https://upload.wikimedia.org/wikipedia/pt/9/99/AmericanBeautyPoster.jpg"))
}
