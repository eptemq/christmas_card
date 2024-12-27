//
//  Desire.swift
//  alfa-hackaton
//
//  Created by Maxime Ashurov on 27/12/2024.
//

import UIKit
import SwiftUI

struct Wish: Identifiable {
    let id = UUID()
    let image: UIImage
    let text: String
}

extension Wish: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            Text(text)
            .font(.system(size: 12, weight: .semibold))
        }
        .padding([.leading, .trailing, .top], 12)
        .padding(.bottom, 16)
        .card()
    }
}
