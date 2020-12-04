//
//  ContentView.swift
//  swiftUIExampleForWatchApp
//
//  Created by Eunae Jang on 2020/12/04.
//

import SwiftUI

struct IOSContentView: View {
    
    var body: some View {
            NavigationView {
                GeometryReader { geo in
                    ScrollView(.vertical) {
                        VStack{
                            Text("watchOS Seminar")
                                .font(.headline)
                                .foregroundColor(Color("newPrimaryColor"))
                                .fontWeight(.bold)
                            Text("Group 5")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .fontWeight(.bold)
                            Spacer()
                            Image("watchOS")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width)
                            Spacer()
                            NavigationLink(destination: IOSDetailView()) {
                                Text("See Overview").foregroundColor(Color("newPrimaryColor")).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            .buttonStyle(DefaultButtonStyle())
                        }
                        .frame(width: geo.size.width)
                        .frame(minHeight: geo.size.height)
                    }
                    .navigationBarHidden(true)
            }
        }
        
    }
}

struct IOSContentView_Previews: PreviewProvider {
    static var previews: some View {
        IOSContentView()
    }
}
