//
//  Wishes.swift
//  alfa-hackaton
//
//  Created by Maxime Ashurov on 27/12/2024.
//

import SwiftUI

struct Wishes: View {
    let items = [
        Wish(
            image: UIImage(named: "Santa")!,
            text: "Удачного года без deprecated API!\n"
        ),
        Wish(
            image: UIImage(named: "Socks")!,
            text: "Пусть новые фичи не ломают старые релизы!"
        ),
        Wish(
            image: UIImage(named: "Gloves")!,
            text: "Пусть App Store\nникогда не тормозит модерацию!"
        ),
        Wish(
            image: UIImage(named: "Cookie")!,
            text: "Стабильной работы Xcode... ну хоть на праздники!"
        )
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Пожелания в Новом году")
            .font(.system(size: 22, weight: .semibold))
            .frame(height: 28)
            .padding(.top, 8)
            .padding(.bottom, 4)
            
            HStack(alignment: .top, spacing: 12) {
                VStack(spacing: 12) {
                    items[0]
                    items[1]
                }
                
                VStack(spacing: 12) {
                    items[2]
                    items[3]
                }
            }
        }
    }
}


#Preview {
    Wishes()
}
