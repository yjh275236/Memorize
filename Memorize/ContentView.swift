//
//  ContentView.swift
//  Memorize
//
//  Created by YJH on 2025/4/16.
//

import SwiftUI

struct ContentView: View {
    
//    let emojis: [String] = ["👌","❤️","😳","😉"]
//    let emojis: Array<String> = ["👌","❤️","😳","😉"]
    let emojis = ["👌","❤️","😳","😉"]

    
    var body: some View {
        HStack {
//            0..<4 = 0,1,2,3   0...4 = 0,1,2,3,4
            ForEach(emojis.indices,id: \.self){ index in
                    CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content:String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
         let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
    }
}


#Preview {
    ContentView()
}
