//
//  CardModel.swift
//  Developers
//
//  Created by Mustafa TAVASLI on 1.02.2024.
//

import SwiftUI

// MARK: CARD MODEL

struct Card: Identifiable {
    // Universally Unique Identifier
    var id: UUID
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    // Her bir kartin farkli renkleri olacagi icin gradient degiskeni olusturduk.
    var gradientColors: [Color]
}
