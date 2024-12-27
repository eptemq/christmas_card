//
//  CompilationCard.swift
//  christmas_card
//
//  Created by Чебупелина on 27.12.2024.
//

import SwiftUI

struct CompilationCard: View {
    var body: some View {
        VStack(spacing: 0) {
            Image("christmas")
                .resizable()
                .scaledToFit()
            CompilationBottomView()
                .padding(
                    EdgeInsets(
                        top: 8,
                        leading: 20,
                        bottom: 8,
                        trailing: 12
                    )
                )
        }
        .card()
    }
}

#Preview {
    CompilationCard()
}
