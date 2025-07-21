//
//  ContentView.swift
//  Memorize
//
//  Created by romankolivoshko on 10.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFacaUp: true)
            CardView()
            CardView(isFacaUp: true)
            CardView(isFacaUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    
    }
}

struct CardView: View {
    var isFacaUp: Bool = true
    
    var body: some View {
        ZStack  {
            var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFacaUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
    }
}














#Preview {
    ContentView()
}
