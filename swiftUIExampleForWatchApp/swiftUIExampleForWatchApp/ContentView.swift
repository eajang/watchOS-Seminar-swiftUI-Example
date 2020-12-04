//
//  ContentView.swift
//  swiftUIExampleForWatchApp
//
//  Created by Eunae Jang on 2020/12/04.
//

import SwiftUI

struct ContentView: View {
    let overView: [Overview] = [
        Overview(title: "watchOS"),
        Overview(title: "watchOS layout"),
        Overview(title: "watchKit"),
        Overview(title: "watchOS App Lifecycle"),
        Overview(title: "watchOS App with iOS App"),
        Overview(title: "watch-Only App"),
        Overview(title:"Demo")]
    
    var body: some View {
            GeometryReader { geo in
                VStack {
                    HStack {
                        Text("watchOS Seminar")
                            .font(.subheadline)
                            .foregroundColor(Color("newPrimaryColor"))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("Group 5")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16))
                VStack {
                    Image("watchOS")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                NavigationView {
                    List(overView) { overview in
                        NavigationLink(
                            destination: Text(overview.title).font(.largeTitle)) {
                                Text(overview.title)
                        }
                    }
                    .navigationBarHidden(true)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Overview: Identifiable {
    var id = UUID()
    var title: String
}
