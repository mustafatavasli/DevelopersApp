//
//  CardView.swift
//  Developers
//
//  Created by Mustafa TAVASLI on 31.01.2024.
//

import SwiftUI

struct CardView: View {
    
    // MARK: PROPERTIES
    
    var gradient : [Color] = [Color("Color01"), Color("Color02")]
    // Card arkaplani icin kullanilacak.
    
    // MARK: CARD
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            // Pozisyonlama
            .offset(y: -218)
            
            Button(action: {
                print("Button was pressed.")
            }, label: {
                HStack {
                    Text("Learn".uppercased())
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
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            })
            // Pozisyonlama
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: PREVIEW

#Preview {
    CardView()
}
