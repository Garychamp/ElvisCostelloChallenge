//
//  ContentView.swift
//  ElvisCostelloChallenge
//
//  Created by Gary Hoare on 03/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300,)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            Spacer()
        }
        
        HStack {
            Button("Peace") {
                message = "Peace"
                imageName = "peacesign"
            }
            Button("Love") {
                message = "Love"
                imageName = "heart"
            }
            Button("Understanding") {
                message = "Understanding"
                imageName = "lightbulb"
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(.purple)
        
    }
}

#Preview {
    ContentView()
}
