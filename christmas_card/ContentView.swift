//
//  ContentView.swift
//  christmas_card
//
//  Created by Artem Zhornitsky on 27.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    private var selectedTabColor = UIColor(hex: 0x5548E7, alpha: 1.0)

    init() {
        self.selectedTab = 0
        self.selectedTabColor = UIColor(hex: 0x5548E7, alpha: 1.0)
    }
    var body: some View {
//        TabView(selection: $selectedTab) {
            NavigationView {
                Text("Main Content")
                    .navigationTitle("Хо-Хо-Хо")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image("Seach")
                        }

                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image("Notification")
                        }
                    }
            }
//            .tabItem {
//                Image("Home")
//            }
//            .tag(0)
//            SearchView()
//                .tabItem {
//                    Image("Play")
//                }
//                .tag(1)
//
//            ProfileView()
//                .tabItem {
//                    Image("More")
//                }
//                .tag(2)
//            ProfileView()
//                .tabItem {
//                    Image("Chat")
//                }
//                .tag(3)
//        }
//        .accentColor(.red)
    }

    private func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.systemBackground // Set background color

        // Set the icon and text color for selected state
        appearance.stackedLayoutAppearance.selected.iconColor = .black
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemPurple]

        // Set the icon and text color for normal (unselected) state
        appearance.stackedLayoutAppearance.normal.iconColor = .red
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]

        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
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

#Preview {
    ContentView()
}
