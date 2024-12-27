//
//  NewYearView.swift
//  christmas_card
//
//  Created by Maxime Ashurov on 27/12/2024.
//

import SwiftUI

struct NewYearView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 24) {
                CompilationCard()
                Wishes()
            }
            .padding(20)
        }
    }
}
