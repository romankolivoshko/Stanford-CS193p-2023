//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by romankolivoshko on 10.07.2025.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    
    let emojis = ["👻","🎃","🕷️","😈","💀","☠️","🕸️","🧙🏻","👹","😱","🍭"]
    
   
    
    var body: some View {
            ScrollView {
                cards
            }
        .padding()
    
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(Color.orange)
    }
    }

struct CardView: View {
    let content: String
    @State var isFacaUp = true
    
    var body: some View {
        ZStack  {
            let  base = RoundedRectangle(cornerRadius: 12)
           Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
           .opacity(isFacaUp ? 1 : 0)
            base.fill().opacity(isFacaUp ? 0 : 1)
        }
        .onTapGesture {
            isFacaUp.toggle()
        }
    }
}














#Preview {
    EmojiMemoryGameView()
}
