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
    @State var isFacaUp = true
    
    var body: some View {
        ZStack  {
            let  base = RoundedRectangle(cornerRadius: 12)
            if isFacaUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
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
