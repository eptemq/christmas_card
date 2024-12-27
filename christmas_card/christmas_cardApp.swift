//
//  christmas_cardApp.swift
//  christmas_card
//
//  Created by Artem Zhornitsky on 27.12.2024.
//

import SwiftUI

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}


struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab){
            ContentView()
                .tabItem {
                    Image("Home")
                }
                .tag(0)
            SearchView()
                .tabItem {
                    Image("Play")
                }
                .tag(1)

            ProfileView()
                .tabItem {
                    Image("More")
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    Image("Chat")
                }
                .tag(3)
        }
        .accentColor(.purple) // Optional: Customize the selected tab color
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home Screen")
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search Screen")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Screen")
    }
}
