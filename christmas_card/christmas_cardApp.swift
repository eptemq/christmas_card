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
    @State private var selectedTab = 0

    init() {
        setupTabBarAppearance()
    }

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }

    private func setupTabBarAppearance() {
        // Configure UITabBarAppearance
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.systemBackground // Background color

        // Customize selected icon and text
        appearance.stackedLayoutAppearance.selected.iconColor = .red
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemPurple]

        // Customize unselected icon and text
        appearance.stackedLayoutAppearance.normal.iconColor = .yellow
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]

        // Apply appearance globally
        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }

        // Force tinting
        UITabBar.appearance().tintColor = UIColor.systemPurple // Selected tab icon tint
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray // Unselected tab icon tint
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
