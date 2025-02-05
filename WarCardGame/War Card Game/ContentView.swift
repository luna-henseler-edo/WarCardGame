//
//  ContentView.swift
//  War Card Game
//
//  Created by luna.henseler on 8/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card11"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {

        ZStack {
            Image("background-plain")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            
        }

    }
    
    func deal() {
        //Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        //Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //Update the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue < cpuCardValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
