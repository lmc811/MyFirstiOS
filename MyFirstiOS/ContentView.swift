//
//  ContentView.swift
//  MyFirstiOS
//
//  Created by 이민찬 on 2024/07/11.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["😎","🤬", "🤢", "🫥", "🫥"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self){index in
                CardView(content: emojis[index])
            }
        }
        
            .foregroundColor(.red)
            .padding()
    }
}

struct CardView: View{
    let content : String
    @State var isFaceUp = true
    
    var body: some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else{
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
