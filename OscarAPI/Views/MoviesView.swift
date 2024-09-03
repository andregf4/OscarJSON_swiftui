//
//  MoviesView.swift
//  OscarAPI
//
//  Created by Andre Gerez Foratto on 25/05/24.
//

import SwiftUI

struct MoviesView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @State private var scrollViewOffset: CGFloat = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.black, .red, .red], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    ScrollView {
                        ForEach(viewModel.movies, id: \.self) { m in
                            HStack {
                                AsyncImage(url: URL(string: m.poster)) { image in
                                    image
                                        .resizable()
                                        .frame(width: 70, height: 100)
                                        .cornerRadius(10)
                                } placeholder: {
                                    ProgressView()
                                }
                                .padding(.trailing)
                                
                                VStack(alignment: .leading) {
                                    Text("**Year:** \(m.year)")
                                    Text("**Movie:** \(m.movie)")
                                }
                                .foregroundStyle(.yellow)
                                Spacer()
                                NavigationLink(destination: MovieInfoView(info: m)) {
                                    ZStack {
                                        Circle()
                                            .frame(width: 40)
                                            .foregroundStyle(.black)
                                        Image(systemName: "movieclapper")
                                            .foregroundStyle(.yellow)
                                    }
                                    .padding(.trailing, 20)
                                }
                            }
                            .shadow(radius: 10)
                            .padding(6)
                            .background(.black.opacity(0.5))
                            .cornerRadius(10)
                            .padding([.leading, .trailing])
                        }
                    }
                }
            }
        }
        .toolbarBackground(Color(.black), for: .navigationBar)
    }
}

#Preview {
    MoviesView()
}
