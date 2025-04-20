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
    let emojis = ["👌","❤️","😳","😉","❤️","😳","😉","❤️","😳","😉"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            card
            Spacer()
            cardCountAdjustes
        }
        .padding()
    }
    var card: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120, maximum: 120)),GridItem(),GridItem()]) {
            //            0..<4 = 0,1,2,3   0...4 = 0,1,2,3,4
            ForEach(0..<cardCount,id: \.self){ index in
                CardView(content: emojis[index])
            }
            .foregroundColor(.orange)
        }
    }
    
    var cardCountAdjustes:some View{
        HStack{
            cardRemove
            Spacer()
            cardAdd
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster (by offset: Int,symbol:String) -> some View{
        Button(action:{
                cardCount += offset
            },label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cardRemove: some View {
        cardCountAdjuster(by:-1, symbol:"rectangle.stack.badge.minus.fill")
    }
    
    var cardAdd: some View {
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
}





struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
         let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
