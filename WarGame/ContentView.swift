//
//  ContentView.swift
//  WarGame
//
//  Created by Mathias Vinther Søndergaard on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    // @State indikerer, at man kan ændre variablen undervejs i programmet
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack() {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    else {
                        playerScore += 1
                        cpuScore += 1
                    }

                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack() {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        

        
        
// nedenstående er eget forsøg
//        ZStack() {
//            Image("background")
//            VStack() {
//                Spacer()
//                Image("logo")
//                Spacer()
//                HStack() {
//                    Spacer()
//                    Image("back")
//                    Spacer()
//                    Image("back")
//                    Spacer()
//                }
//                Spacer()
//                Image("dealbutton")
//                Spacer()
//                HStack() {
//                    Spacer()
//                    VStack() {
//                        Spacer()
//                        Text("Player")
//                        Text("0")
//                        Spacer()
//                    }
//                    Spacer()
//                    VStack() {
//                        Spacer()
//                        Text("CPU")
//                        Text("0")
//                        Spacer()
//                    }
//                    Spacer()
//                }
//                Spacer()
//            }
//        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
