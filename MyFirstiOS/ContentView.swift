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
           CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        
            .foregroundColor(.orange)
            .padding()
    }
}

struct CardView: View{
    var isFaceUp: Bool = false
    
    var body: some View{
        ZStack(content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("😄").font(.largeTitle)
            } else{
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
