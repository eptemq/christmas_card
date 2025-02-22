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
            NewYearView()
                .navigationTitle("Хо-Хо-Хо")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    // Left corner item
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("Seach")
                    }

                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image("Notification")
                    }
                }
        }
        .background(
            VStack {
                Spacer()
                Divider()
                    .frame(height: 1)
                    .background(Color.gray) 
            }
        )
    }
}

#Preview {
    ContentView()
}
