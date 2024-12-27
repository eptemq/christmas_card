//
//  CompilationCard.swift
//  christmas_card
//
//  Created by Чебупелина on 27.12.2024.
//

import SwiftUI

struct CompilationBottomView: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading) {
                Text("Подборка 2024")
                    .foregroundStyle(titleColor)
                    .font(.system(size: 17, weight: .semibold))
                Text("Frank Sinatra — Christmas Dreaming")
                    .foregroundStyle(subtitleColor)
                    .font(.system(size: 13, weight: .regular))
            }
            Spacer()
            Circle()
                .fill(buttonColor)
                .overlay(
                    Image("triangle")
                        .padding([.leading], 2)

                )
                .frame(width: 40, height: 40)
        }
    }

    private var titleColor: Color {
        Color(
            UIColor(
                red: 18.0 / 255.0,
                green: 18.0 / 255.0,
                blue: 18.0 / 255.0,
                alpha: 1
            )
        )
    }

    private var subtitleColor: Color {
        Color(
            UIColor(
                red: 122.0 / 255.0,
                green: 122.0 / 255.0,
                blue: 122.0 / 255.0,
                alpha: 1
            )
        )
    }

    private var buttonColor: Color {
        Color(
            UIColor(
                red: 111.0 / 255.0,
                green: 117.0 / 255.0,
                blue: 226.0 / 255.0,
                alpha: 1
            )
        )
    }
}
