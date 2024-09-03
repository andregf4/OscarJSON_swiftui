//
//  ContentView.swift
//  OscarAPI
//
//  Created by Andre Gerez Foratto on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.black, .red, .brown], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Best Movies")
                        .bold()
                        .font(.custom("SpicyRice-Regular", size: 40))
                        .foregroundStyle(.white)
                    Text("2000 - 2024")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    Image(systemName: "figure.stand")
                        .font(.system(size: 230))
                        .foregroundStyle(.yellow)
                        .padding(.bottom,-50)
                    ZStack {
                        Image(systemName: "square.fill")
                            .font(.system(size: 230))
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 150, height: 40)
                                    .foregroundStyle(.yellow)
                                    .opacity(0.5)
                                Text("OSCAR")
                                    .font(.title)
                                    .bold()
                            }
                            NavigationLink(destination: MoviesView()) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 150, height: 80)
                                        .foregroundStyle(.gray)
                                        .cornerRadius(15.0)
                                    Text("Click here!")
                                        .fontWeight(.light)
                                        .font(.title)
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                }
                .shadow(radius: 10)
                .padding()
            }
        }
        .tint(.yellow)
    }
}

#Preview {
    ContentView()
}
