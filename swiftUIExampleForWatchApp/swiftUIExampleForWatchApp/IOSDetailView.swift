//
//  iOSDetailView.swift
//  swiftUIExampleForWatchApp
//
//  Created by Eunae Jang on 2020/12/04.
//

import SwiftUI

struct IOSDetailView: View {
    
    let overView: [Overview] = [
        Overview(title: "1. watchOS"),
        Overview(title: "2. watchOS layout"),
        Overview(title: "3. watchKit"),
        Overview(title: "4. watchOS App Lifecycle"),
        Overview(title: "5. watchOS App with iOS App"),
        Overview(title: "6. watch-Only App"),
        Overview(title:"6. Demo"),
        Overview(title:"7. QnA")]
    
    var body: some View {
            List(overView) { overview in
                NavigationLink(
                    destination: Text(overview.title).font(.largeTitle)) {
                        Text(overview.title)
                }
            }
            .navigationBarTitle("Overview")
    }
}

struct IOSDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IOSDetailView()
    }
}

struct Overview: Identifiable {
    var id = UUID()
    var title: String
}
