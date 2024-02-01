//
//  CardView.swift
//  Developers
//
//  Created by Mustafa TAVASLI on 31.01.2024.
//

import SwiftUI

struct CardView: View {
    
    // MARK: PROPERTIES
    
    var card : Card
    
    @State private var fadeIn : Bool = false
    @State private var moveDownward : Bool = false
    @State private var moveUpward : Bool = false
        
    // MARK: CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                // Show Image : Hide Image
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            // Animasyona göre pozisyonlama
            .offset(y: moveDownward ? -218 : -300)
            
            Button(action: {
                playSound(sound: "sound-chime", type: "mp3")
            }, label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white)
                        .tint(Color.white)
                    // SF Symbols Kullanimi
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .tint(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            })
            // Pozisyonlama
            .offset(y: moveUpward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            // Animation
            withAnimation(.linear(duration: 1.2)) {
                // Changing State
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                // Changing State
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
    }
}

// MARK: PREVIEW

#Preview {
    CardView(card: cardData[0])
}
