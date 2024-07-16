//
//  ContentView.swift
//  MyFirstiOS
//
//  Created by 이민찬 on 2024/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
           CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        
            .foregroundColor(.red)
            .padding()
    }
}

struct CardView: View{
    @State var isFaceUp = false
    
    var body: some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("😄").font(.largeTitle)
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
