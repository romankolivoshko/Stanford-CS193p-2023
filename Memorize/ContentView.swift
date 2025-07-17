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
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    
    }
}

struct CardView: View {
    var isFacaUp: Bool = false
    
    var body: some View {
        ZStack (content: {
            if isFacaUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}














#Preview {
    ContentView()
}
