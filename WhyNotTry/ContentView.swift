//
//  ContentView.swift
//  WhyNotTry
//
//  Created by admin on 08/06/24.
//

import SwiftUI

struct ContentView: View {
    var sportActivities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket"]
    @State var selected = "Archery"
    
    var body: some View {
        VStack{
            Text("Why not try...").font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white))
                
                Text("\(selected)!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }

        }
        
        Button("Surprise me!"){
            selected = sportActivities.randomElement() ?? "Archery"
        }.buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
