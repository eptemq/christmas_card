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
                    // Left corner item
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("Chat")
                    }

                    // Right corner item
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image("Seach")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
