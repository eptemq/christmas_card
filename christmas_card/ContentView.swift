//
//  ContentView.swift
//  christmas_card
//
//  Created by Artem Zhornitsky on 27.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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

#Preview {
    ContentView()
}
