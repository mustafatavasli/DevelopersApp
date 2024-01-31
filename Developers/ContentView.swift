//
//  ContentView.swift
//  Developers
//
//  Created by Mustafa TAVASLI on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: PROPERTIES
    
    var cards : [Card] = cardData
    
    // MARK: CONTENT
    
    var body: some View {
        
        // Yatay ScrollView
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

// MARK: PREVIEW

#Preview {
    ContentView(cards: cardData)
}
