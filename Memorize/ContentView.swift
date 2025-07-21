//
//  ContentView.swift
//  Memorize
//
//  Created by romankolivoshko on 10.07.2025.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🕷️","😈","😈"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    
    }
}

struct CardView: View {
    let content: String
    @State var isFacaUp = true
    
    var body: some View {
        ZStack  {
            let  base = RoundedRectangle(cornerRadius: 12)
            if isFacaUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFacaUp.toggle()
        }
    }
}














#Preview {
    ContentView()
}
