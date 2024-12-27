//
//  View+Card.swift
//  alfa-hackaton
//
//  Created by Maxime Ashurov on 27/12/2024.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .background(Color.white)
        .cornerRadius(24)
        .shadow(color: Color.black.opacity(0.08), radius: 12, x: 0, y: 4)
    }
}

extension View {
    public func card() -> some View {
        self.modifier(CardModifier())
    }
}
