//
//  ContentView.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TabViewModel()
    
    var body: some View {
        NavigationView {
            TabView(selection: $viewModel.selectedTab) {
                SchoolView()
                    .tabItem {
                        Image(systemName: "book.circle")
                        Text("School")
                    }
                    .tag(0)
//                    .id(UUID())
                JobView()
                    .tabItem {
                        Image(systemName: "briefcase.circle")
                        Text("Jobs")
                    }
                    .tag(1)
//                    .id(UUID())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
