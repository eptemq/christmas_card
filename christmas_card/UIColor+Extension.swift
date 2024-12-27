//
//  UIColor+Extension.swift
//  christmas_card
//
//  Created by Artem Zhornitsky on 27.12.2024.
//

import UIKit
import SwiftUI

extension UIColor {
    // MARK: - Static

    static func color(light: UIColor, dark: UIColor) -> UIColor {
        UIColor { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? dark : light
        }
    }

    // MARK: - Init

    convenience init(hex: Int, alpha: CGFloat) {
        let redHex = CGFloat((hex >> 16) & 0xFF)
        let greenHex = CGFloat((hex >> 8) & 0xFF)
        let blueHex = CGFloat(hex & 0xFF)
        self.init(
            red: redHex / CGFloat(255.0),
            green: greenHex / CGFloat(255.0),
            blue: blueHex / CGFloat(255.0),
            alpha: alpha
        )
    }

    public convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else {
            return nil
        }

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    // MARK: - Public

    public var color: Color {
        if #available(iOS 15.0, *) {
            return Color(uiColor: self)
        } else {
            return Color(self)
        }
    }

    public func hexString(with traitCollection: UITraitCollection) -> String {
        guard let components = resolvedColor(with: traitCollection).cgColor.components else { return "" }

        let red: Float = components.isEmpty ? 0 : Float(components[0])
        let green: Float = components.count > 1 ? Float(components[1]) : 0
        let blue: Float = components.count > 2 ? Float(components[2]) : 0
        let alpha: Float = components.count > 3 ? Float(components[3]) : 0

        return String(
            format: "#%02lX%02lX%02lX %.2f",
            lroundf(red * Float(255)),
            lroundf(green * Float(255)),
            lroundf(blue * Float(255)),
            alpha
        )
    }
}
